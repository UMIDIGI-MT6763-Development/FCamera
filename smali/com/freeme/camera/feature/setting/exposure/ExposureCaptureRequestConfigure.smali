.class public Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;
.super Ljava/lang/Object;
.source "ExposureCaptureRequestConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/exposure/IExposure$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CAM_FLASH_CUSTOMIZED_RESULT_MAIN_FLASH:[I

.field private static final CAM_FLASH_CUSTOMIZED_RESULT_NON_PANEL:[I

.field private static final CAM_FLASH_CUSTOMIZED_RESULT_PRE_FLASH:[I

.field private static final EXTERNLA_FLASH_CUSTOMIZED:Ljava/lang/String; = "vendor.mtk.camera.external.flash.customized"

.field private static final FLASH_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final FLASH_KEY_CUSTOMIZATION_AVAILABLE:Ljava/lang/String; = "com.freeme.flashfeature.customization.available"

.field private static final FLASH_KEY_CUSTOMIZED_RESULT:Ljava/lang/String; = "com.freeme.flashfeature.customizedResult"

.field private static final FLASH_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final FLASH_ON_VALUE:Ljava/lang/String; = "on"

.field private static final MAIN_FLASH_BRIGHTNESS:I = 0xff

.field private static final PRE_FLASH_BRIGHTNESS:I = 0xff

.field private static final SHUTTER_AUTO_VALUE:Ljava/lang/String; = "Auto"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TEMPLATE_STILL_CAPTURE:I = 0x2

.field private static final TEMPLATE_ZERO_SHUTTER_LAG:I = 0x5

.field private static sIsCustomizedFlash:Z


# instance fields
.field private mAEMode:I

.field private mAeLock:Z

.field private mAePreTriggerAndCaptureEnabled:Z

.field private mAePreTriggerRequestProcessed:Z

.field private mAeState:Ljava/lang/Integer;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mContext:Landroid/content/Context;

.field private mCurrentEv:I

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

.field protected mExposureCompensationStep:F

.field private mExternelCaptureTriggered:Z

.field private mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

.field private mHandler:Landroid/os/Handler;

.field private mIsAeLockAvailable:Ljava/lang/Boolean;

.field private mIsFlashAvailable:Ljava/lang/Boolean;

.field private mIsFlashCustomizedSupported:Ljava/lang/Boolean;

.field private mKeyFlashCustomizedResult:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private mLastConvergedState:Ljava/lang/Integer;

.field private mLastCustomizedValue:I

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field private mNeedChangeFlashModeToTorch:Z

.field private mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->CAM_FLASH_CUSTOMIZED_RESULT_NON_PANEL:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->CAM_FLASH_CUSTOMIZED_RESULT_PRE_FLASH:[I

    new-array v1, v0, [I

    const/4 v3, 0x2

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->CAM_FLASH_CUSTOMIZED_RESULT_MAIN_FLASH:[I

    const-string v1, "vendor.mtk.camera.external.flash.customized"

    invoke-static {v1, v2}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sIsCustomizedFlash:Z

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/exposure/Exposure;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashCustomizedSupported:Ljava/lang/Boolean;

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_NO_FLASH:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCurrentEv:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposureCompensationStep:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerAndCaptureEnabled:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerRequestProcessed:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastConvergedState:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastCustomizedValue:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashAvailable:Ljava/lang/Boolean;

    new-instance v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$1;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastConvergedState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)Lcom/freeme/camera/feature/setting/exposure/Exposure;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->setOriginalAeMode()V

    return-void
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->dispatchResult(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsAeLockAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeLock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposureCompensationStep:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCurrentEv:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addBaselineCaptureKeysToRequest] mAEMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mAeLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",exposureCompensationIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private buildExposureCompensation()V
    .locals 5

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[buildExposureCompensation]+ exposure compensation range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "),with step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposureCompensationStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    int-to-float v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposureCompensationStep:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    int-to-float v1, v1

    iget v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposureCompensationStep:F

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
    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->initPlatformSupportedValues(Ljava/util/ArrayList;)V

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
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->initExposureCompensation([I)V

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[buildExposureCompensation] - values  = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private captureCustomizedWithFlashAuto()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[captureCustomizedWithFlashAuto] with ae state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    goto :goto_0

    :cond_1
    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sendAePreTriggerCaptureRequest()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private captureStandardPanel()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[captureStandardPanel]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    const/4 v1, 0x1

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setPanel(ZI)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$2;-><init>(Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private captureStandardWithFlashAuto()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[capturePanelWithFlashAuto] with ae state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sendAePreTriggerCaptureRequest()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->captureStandardPanel()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkAeStateTodoCustomizedCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.freeme.flashfeature.customizedResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mKeyFlashCustomizedResult:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkAeStateTodoCustomizedCapture], value[0]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    aget-byte p2, p1, v1

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastCustomizedValue:I

    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    aget-byte p2, p1, v1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->CAM_FLASH_CUSTOMIZED_RESULT_NON_PANEL:[I

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    sget-object p2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkAeStateTodoStandardCapture] go to capture with mAeState : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    goto :goto_0

    :cond_3
    aget-byte p2, p1, v1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->CAM_FLASH_CUSTOMIZED_RESULT_PRE_FLASH:[I

    aget v0, v0, v1

    const/16 v3, 0xff

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p2, v2, v3}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setPanel(ZI)V

    goto :goto_0

    :cond_4
    aget-byte p2, p1, v1

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->CAM_FLASH_CUSTOMIZED_RESULT_MAIN_FLASH:[I

    aget v0, v0, v1

    if-ne p2, v0, :cond_5

    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p2, v2, v3}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setPanel(ZI)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    :cond_5
    :goto_0
    aget-byte p1, p1, v1

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastCustomizedValue:I

    :cond_6
    return-void
.end method

.method private checkAeStateTodoNormalCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerRequestProcessed:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerRequestProcessed:Z

    :cond_2
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerRequestProcessed:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    :cond_3
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkAeStateTodoNormalCapture] go to capture with mAeState : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerAndCaptureEnabled:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerRequestProcessed:Z

    :cond_4
    return-void

    :cond_5
    :goto_1
    sget-object p2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkAeStateTodoNormalCapture] mAeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ,aePrecaptureTrigger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private checkAeStateTodoStandardCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    :cond_1
    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    :cond_3
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[checkAeStateTodoStandardCapture] go to capture with mAeState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    sget-object p2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkAeStateTodoStandardCapture] aeMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ,mAeState "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchResult(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$3;->$SwitchMap$com$freeme$camera$feature$setting$exposure$IExposure$FlashFlow:[I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->checkAeStateTodoCustomizedCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->checkAeStateTodoStandardCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerAndCaptureEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->checkAeStateTodoNormalCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doCustomizedCapture()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doCustomizedCapture] with flash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_2

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_1

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doCustomizedCapture] error flash value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->captureCustomizedWithFlashAuto()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sendAePreTriggerCaptureRequest()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doNormalCapture()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->needAePreTriggerAndCapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerAndCaptureEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sendAePreTriggerCaptureRequest()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[doNormalCapture] sendAePreTriggerCaptureRequest is ignore becausethe last ae PreTrigger is not complete"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doStandardCapture()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doStandardCapture] with flash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_2

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_1

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doStandardCapture] error flash value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->capture()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->captureStandardWithFlashAuto()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->captureStandardPanel()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method private getMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private initFlashVendorKey()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->isFlashCustomizedAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashCustomizedSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyFlashCustomizedResult()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mKeyFlashCustomizedResult:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initFlashVendorKey] mIsFlashCustomizedSupported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashCustomizedSupported:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",sIsCustomizedFlash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sIsCustomizedFlash:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initFlow(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_NORMAL:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[initFlow] normal flow"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->isThirdPartyIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[initFlow] isThirdPartyIntent return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashCustomizedSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->sIsCustomizedFlash:Z

    if-eqz v0, :cond_2

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_PANEL_CUSTOMIZATION:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[initFlow] customized flow"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->isExternalFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->FLASH_FLOW_PANEL_STANDARD:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[initFlow] standard flow"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_3
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

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCurrentEv:I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
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
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

.method private needAePreTriggerAndCapture()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAePreTriggerCaptureRequest()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getRepeatingTemplateType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendAePreTriggerCaptureRequest] builder is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendAePreTriggerCaptureRequest] sessionProxy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[sendAePreTriggerCaptureRequest] CONTROL_AE_PRECAPTURE_TRIGGER_START"

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAePreTriggerAndCaptureEnabled:Z

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setOriginalAeMode()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    return-void

    :cond_1
    :goto_0
    iput v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    return-void

    :cond_2
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    return-void

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    return-void

    :cond_4
    iput v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    return-void
.end method

.method private updateAeMode()V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->setOriginalAeMode()V

    return-void
.end method

.method private updateCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateCapabilities] characteristics is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsAeLockAvailable:Ljava/lang/Boolean;

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->getMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->getMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->getExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposureCompensationStep:F

    return-void
.end method


# virtual methods
.method protected changeFlashToTorchByAeState(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[changeFlashToTorchByAeState] + needChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mLastConvergedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastConvergedState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[changeFlashToTorchByAeState] - mNeedChangeFlashModeToTorch = false"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    :cond_1
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mLastConvergedState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    :cond_4
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[changeFlashToTorchByAeState] - mNeedChangeFlashModeToTorch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public checkTodoCapturAfterAeConverted()Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure$3;->$SwitchMap$com$freeme$camera$feature$setting$exposure$IExposure$FlashFlow:[I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mFlow:Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/exposure/IExposure$FlashFlow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExternelCaptureTriggered:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->doCustomizedCapture()V

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->doStandardCapture()V

    return v1

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->hasFocuser(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->doNormalCapture()V

    return v1

    :pswitch_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->getCurrentShutterValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configCaptureRequest, shutterValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "Auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAEMode:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->updateAeMode()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

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

.method public getAeLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeLock:Z

    return v0
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public needConsiderAePretrigger()Z
    .locals 1

    const/4 v0, 0x1

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

    iget p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    if-lt p1, p2, :cond_0

    iget p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    if-gt p1, p2, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCurrentEv:I

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setAeLock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsAeLockAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mAeLock:Z

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setAeLock] Ae lock not supported"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mNeedChangeFlashModeToTorch:Z

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashAvailable:Ljava/lang/Boolean;

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCharacteristics] mIsFlashAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mIsFlashAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->initFlashVendorKey()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->initFlow(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->updateCapabilities(Landroid/hardware/camera2/CameraCharacteristics;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->buildExposureCompensation()V

    return-void
.end method

.method public updateEv(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateEv] + value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMinExposureCompensation:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mMaxExposureCompensation:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCurrentEv:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mExposure:Lcom/freeme/camera/feature/setting/exposure/Exposure;

    iget v0, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->mCurrentEv:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/Exposure;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateEv] invalid exposure range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/exposure/ExposureCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[updateEv] -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->v(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
