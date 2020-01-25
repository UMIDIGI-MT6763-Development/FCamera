.class public Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;
.super Ljava/lang/Object;
.source "FocusCaptureRequestConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;
.implements Lcom/freeme/camera/feature/setting/focus/IFocusController;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;
    }
.end annotation


# static fields
.field private static final AUTOFOCUS:Ljava/lang/String; = "autoFocus"

.field private static final CAMERA2_REGION_WEIGHT:I

.field private static final CANCEL_AUTOFOCUS:Ljava/lang/String; = "cancelAutoFocus"

.field private static final FLASH_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final FLASH_CALIBRATION_ENABLE:Ljava/lang/String; = "vendor.mtk.camera.app.flash.calibration"

.field private static final FLASH_CALIBRATION_OFF:[I

.field private static final FLASH_CALIBRATION_ON:[I

.field private static final FLASH_CALIBRATION_SUCCESS:I = 0x0

.field private static final FLASH_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final FLASH_ON_VALUE:Ljava/lang/String; = "on"

.field private static final LOG_ROIS_PROP:Ljava/lang/String; = "vendor.mtk.camera.app.3a.debug.log"

.field private static final REGION_WEIGHT:F = 0.022f

.field private static final SLOW_MOTION:Ljava/lang/String; = "com.freeme.camera.feature.mode.slowmotion.SlowMotionMode"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TEMPLATE_STILL_CAPTURE:I = 0x2

.field private static final TEMPLATE_ZERO_SHUTTER_LAG:I = 0x5

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static sIsFlashCalibrationEnable:Z

.field private static sIsLogAeAfRegion:Z


# instance fields
.field private mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAeState:Ljava/lang/Integer;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mContext:Landroid/content/Context;

.field private mCropRegion:Landroid/graphics/Rect;

.field private mCurrentFocusMode:I

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mDisableUpdateFocusState:Z

.field private mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

.field private mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mIsFlashCalibrationSupported:Ljava/lang/Boolean;

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

.field private mLastControlAfStateFrameNumber:J

.field private mLastResultAFState:I

.field private final mLock:Ljava/lang/Object;

.field private mNeedWaitActiveScanDone:Z

.field private mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mStartTime:J

.field private mSupportedFocusModeList:Ljava/util/List;
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
    .locals 9

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "vendor.mtk.camera.app.3a.debug.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sIsLogAeAfRegion:Z

    const-string v0, "vendor.mtk.camera.app.flash.calibration"

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sIsFlashCalibrationEnable:Z

    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->FLASH_CALIBRATION_OFF:[I

    new-array v0, v2, [I

    aput v2, v0, v1

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->FLASH_CALIBRATION_ON:[I

    const/4 v0, 0x0

    const/high16 v3, 0x447a0000    # 1000.0f

    const v4, 0x3cb43958    # 0.022f

    invoke-static {v0, v3, v4}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->CAMERA2_REGION_WEIGHT:I

    new-array v0, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v8, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v8, v0, v1

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastResultAFState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastControlAfStateFrameNumber:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mNeedWaitActiveScanDone:Z

    iput v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCropRegion:Landroid/graphics/Rect;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mStartTime:J

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDisableUpdateFocusState:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$1;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCropRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->updateAeState(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->autofocusStateChangeDispatcher(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Lcom/freeme/camera/feature/setting/focus/Focus;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->showFlashCalibrationResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    sget-boolean v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sIsLogAeAfRegion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addBaselineCaptureKeysToRequest] mAERegions[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addBaselineCaptureKeysToRequest] mAFRegions[0] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->FLASH_CALIBRATION_OFF:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private autofocusStateChangeDispatcher(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastControlAfStateFrameNumber:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastControlAfStateFrameNumber:J

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastResultAFState:I

    if-eq v0, p1, :cond_1

    iget-wide v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastControlAfStateFrameNumber:J

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->notifyFocusStateChanged(IJ)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[autofocusStateChangeDispatcher] mLastResultAFState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastResultAFState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",resultAFState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastResultAFState:I

    return-void

    :cond_2
    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[autofocusStateChangeDispatcher] frame number, last:current "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastControlAfStateFrameNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " afState:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private convertEnumToString(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->values()[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private convertEnumToString([I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->values()[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget v4, p1, v3

    array-length v5, v0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5f

    const/16 v6, 0x2d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private convertStringToEnum(Ljava/lang/String;)I
    .locals 8

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->values()[Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getAppSupportedFocusModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString([I)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAppSupportedFocusModes] availableAfModes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",appSupportedFocusModeList = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private getSettingEntryValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getAppSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSettingEntryValues] supportedList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initAppSupportedEntryValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getAppSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initAppSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private initFlashCalibrationVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->isFlashCalibrationSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mIsFlashCalibrationSupported:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyFlashCalibrationRequest()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyFlashCalibrationResult()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initFlashCalibrationVendorKey] mIsFlashCalibrationSupported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mIsFlashCalibrationSupported:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mKeyFlashCalibrationRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mKeyFlashCalibrationResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initFocusMode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initFocusMode] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_PICTURE:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_PICTURE:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->AUTO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_2

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->AUTO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertStringToEnum(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->setValue(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initFocusMode] - mCurrentFocusMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private initPlatformSupportedValues()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString([I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mSupportedFocusModeList:Ljava/util/List;

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initPlatformSupportedValues] availableAfModes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mSupportedFocusModeList = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initPlatformSupportedValues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private initSettingEntryValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initSettingEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private isLastAfTriggerStillOnGoing()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "autoFocus"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isLastAfTriggerStillOnGoing] last autoFocus still in running"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cancelAutoFocus"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isLastAfTriggerStillOnGoing] last cancelAutoFocus still in running"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private notifyFocusStateChanged(IJ)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->INACTIVE:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyFocusStateChanged] autoFocus time  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyFocusStateChanged] autoFocus time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    :goto_0
    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDisableUpdateFocusState:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_SCAN:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "autoFocus"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[notifyFocusStateChanged] mFocusQueue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " before add cancelAutoFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v4, "cancelAutoFocus"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/focus/Focus;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mNeedWaitActiveScanDone:Z

    if-eqz v3, :cond_4

    const-string v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-ne p1, v1, :cond_4

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[notifyFocusStateChanged]  need trigger AF again"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->doAfTriggerBeforeCapture()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mNeedWaitActiveScanDone:Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {v1, v0, p2, p3}, Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;->onFocusStatusUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;J)V

    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendAutoFocusCancelCaptureRequest()V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendAutoFocusCancelCaptureRequest]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendAutoFocusTriggerCaptureRequest] builder is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendAutoFocusCancelCaptureRequest] sessionProxy is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    const-string v2, "com.freeme.camera.feature.mode.slowmotion.SlowMotionMode"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/focus/Focus;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "[sendAutoFocusCancelCaptureRequest] is slow motion"

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "[sendAutoFocusCancelCaptureRequest] is common mode"

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendSettingChangeRequest()V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[sendAutoFocusCancelCaptureRequest]  -"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private sendAutoFocusTriggerCaptureRequest(Z)V
    .locals 5

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendAutoFocusTriggerCaptureRequest] needCancelAutoFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[sendAutoFocusTriggerCaptureRequest] builder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->FLASH_CALIBRATION_ON:[I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[sendAutoFocusTriggerCaptureRequest] sessionProxy is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    const-string v2, "com.freeme.camera.feature.mode.slowmotion.SlowMotionMode"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/focus/Focus;->getCurrentMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "[sendAutoFocusTriggerCaptureRequest] is slow motion"

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "[sendAutoFocusTriggerCaptureRequest] is common mode"

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mStartTime:J

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendAutoFocusTriggerCaptureRequest]  mFocusQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " before add autoFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v1, "autoFocus"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendSettingChangeRequest()V

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[sendAutoFocusTriggerCaptureRequest]  -"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showFlashCalibrationResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mKeyFlashCalibrationResult:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[showFlashCalibrationResult] calibrationResult is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    aget p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->showFlashCalibrationResult(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->showFlashCalibrationResult(Z)V

    :goto_0
    return-void
.end method

.method private updateAeState(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/TotalCaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[autoFocus]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendAutoFocusTriggerCaptureRequest(Z)V

    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[cancelAutoFocus] "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendAutoFocusCancelCaptureRequest()V

    return-void
.end method

.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest] mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

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

.method public disableUpdateFocusState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDisableUpdateFocusState:Z

    return-void
.end method

.method public doAfTriggerBeforeCapture()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->isLastAfTriggerStillOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendAutoFocusTriggerCaptureRequest(Z)V

    return-void
.end method

.method protected getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method protected getCropRegion()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCropRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentFocusMode()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFocusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method protected getSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[getSession]  "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isFocusCanDo()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->hasFocuser(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    return v0
.end method

.method public needWaitAfTriggerDone()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getCurrentFlashValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[needWaitAfTriggerDone] mLastResultAFState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastResultAFState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mAeState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLastResultAFState:I

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return v3

    :cond_2
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_1
    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mNeedWaitActiveScanDone:Z

    return v3

    :pswitch_2
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    return v3

    :pswitch_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->isLastAfTriggerStillOnGoing()Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideFocusMode] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertStringToEnum(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    :cond_0
    return-void
.end method

.method public resetConfiguration()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    return-void
.end method

.method public restoreContinue()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[restoreContinue]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_PICTURE:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->CONTINUOUS_VIDEO:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure$FocusEnum;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertEnumToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertStringToEnum(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDisableUpdateFocusState:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mNeedWaitActiveScanDone:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAeState:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->initPlatformSupportedValues()V

    sget-boolean v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sIsFlashCalibrationEnable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->initFlashCalibrationVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V

    :cond_0
    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->hasFocuser(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->initAppSupportedEntryValues()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->initSettingEntryValues()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->initFocusMode(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setFocusStateListener(Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWaitCancelAutoFocus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->doAfTriggerBeforeCapture()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cancelAutoFocus"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->cancelAutoFocus()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->resetTouchFocusWhenCaptureDone()V

    :cond_1
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v2, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v3, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Area;

    iget-object p1, p1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    sget v4, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->CAMERA2_REGION_WEIGHT:I

    invoke-direct {v3, p1, v4}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_0
    if-eqz p2, :cond_1

    new-array p1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Camera$Area;

    iget-object p2, p2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    sget v2, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->CAMERA2_REGION_WEIGHT:I

    invoke-direct {v0, p2, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_1
    return-void
.end method

.method public updateFocusCallback()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSettingEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->convertStringToEnum(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->mCurrentFocusMode:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method
