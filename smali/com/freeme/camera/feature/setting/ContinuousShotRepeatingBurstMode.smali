.class public Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;
.super Lcom/freeme/camera/feature/setting/ContinuousShotBase;
.source "ContinuousShotRepeatingBurstMode.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CS_KEY_CAPTURE_REQUEST:Ljava/lang/String; = "com.mediatek.cshotfeature.capture"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final mCaptureMode:[I


# instance fields
.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mImageCallback:Lcom/freeme/camera/common/mode/photo/device/CaptureSurface$ImageCallback;

.field private volatile mImageCallbackNumber:I

.field private mIsCshotSupported:Z

.field private mKeyCsCaptureRequest:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mNumberLock:Ljava/lang/Object;

.field private mState:Lcom/freeme/camera/feature/setting/CsState;

.field private volatile mStillCaptureNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mCaptureMode:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mNumberLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mStillCaptureNumber:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallbackNumber:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mIsCshotSupported:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$3;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallback:Lcom/freeme/camera/common/mode/photo/device/CaptureSurface$ImageCallback;

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$4;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mNumberLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mStillCaptureNumber:I

    return p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mStillCaptureNumber:I

    return p1
.end method

.method static synthetic access$208(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mStillCaptureNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mStillCaptureNumber:I

    return v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallbackNumber:I

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallbackNumber:I

    return p1
.end method

.method static synthetic access$308(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallbackNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallbackNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Lcom/freeme/camera/feature/setting/CsState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->createCaptureRequest(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-object p0
.end method

.method private createCaptureRequest(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object p1, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[createCaptureRequest]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mKeyCsCaptureRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mCaptureMode:[I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedCaptureSurface()Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mImageCallback:Lcom/freeme/camera/common/mode/photo/device/CaptureSurface$ImageCallback;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;->setCaptureCallback(Lcom/freeme/camera/common/mode/photo/device/CaptureSurface$ImageCallback;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getModeSharedThumbnailSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->prepareCaptureInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method

.method private prepareCaptureInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prepareCaptureInfo] current builder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

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

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 0

    return-object p0
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/CsState;

    invoke-direct {p1}, Lcom/freeme/camera/feature/setting/CsState;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object p2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] getValue() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentValue = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", supportValues  = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string p1, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mIsCshotSupported:Z

    return-void
.end method

.method protected requestChangeOverrideValues()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mIsCshotSupported:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->isCshotSupport()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->getModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mIsCshotSupported:Z

    :cond_2
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mIsCshotSupported:Z

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->initializeValue(Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyCshotRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mKeyCsCaptureRequest:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_3
    return-void
.end method

.method protected startContinuousShot()Z
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mIsCshotSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    sget-object v2, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$1;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected stopContinuousShot()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_ERROR:Lcom/freeme/camera/feature/setting/CsState$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->onContinuousShotStopped()V

    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->onContinuousShotDone(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_INIT:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/CsState;->updateState(Lcom/freeme/camera/feature/setting/CsState$State;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mState:Lcom/freeme/camera/feature/setting/CsState;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CsState;->getCShotState()Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode$2;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;->stopSound()V

    return v2
.end method

.method public unInit()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->unInit()V

    return-void
.end method
