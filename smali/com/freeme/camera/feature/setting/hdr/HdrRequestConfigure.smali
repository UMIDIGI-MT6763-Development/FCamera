.class public Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;
.super Ljava/lang/Object;
.source "HdrRequestConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.implements Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CAM_HDR_AUTO_DETECTION_ON:[I

.field private static final CAM_HDR_FEATURE_HDR_MODE_AUTO:[I

.field private static final CAM_HDR_FEATURE_HDR_MODE_OFF:[I

.field private static final CAM_HDR_FEATURE_HDR_MODE_ON:[I

.field private static final CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

.field private static final CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

.field private static final HDR_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final HDR_KEY_AVAILABLE_HDR_MODES_PHOTO:Ljava/lang/String; = "com.mediatek.hdrfeature.availableHdrModesPhoto"

.field private static final HDR_KEY_AVAILABLE_HDR_MODES_VIDEO:Ljava/lang/String; = "com.mediatek.hdrfeature.availableHdrModesVideo"

.field private static final HDR_KEY_DETECTION_MODE:Ljava/lang/String; = "com.mediatek.hdrfeature.hdrMode"

.field private static final HDR_KEY_DETECTION_RESULT:Ljava/lang/String; = "com.mediatek.hdrfeature.hdrDetectionResult"

.field private static final HDR_KEY_SESSION_MODE:Ljava/lang/String; = "com.mediatek.hdrfeature.SessionParamhdrMode"

.field private static final HDR_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final HDR_ON_VALUE:Ljava/lang/String; = "on"

.field private static final MICRO_LEN_CAMERA_ID:Ljava/lang/String; = "4"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

.field private mHdrSessionValue:Ljava/lang/String;

.field private mIsHdrSupported:Z

.field private mIsSensorDetectionHdrAutoSupported:Z

.field private mIsSensorDetectionHdrOnSupported:Z

.field private mIsVendorHdrSupported:Z

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

.field private mLastHdrDetectionValue:I

.field private mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_OFF:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_ON:[I

    new-array v1, v0, [I

    const/4 v3, 0x2

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_AUTO:[I

    new-array v1, v0, [I

    const/4 v3, 0x3

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    new-array v1, v0, [I

    const/4 v3, 0x4

    aput v3, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_AUTO_DETECTION_ON:[I

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mCameraId:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mLastHdrDetectionValue:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsHdrSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsVendorHdrSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrOnSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrAutoSupported:Z

    const-string v0, "off"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure$1;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    iput-object p4, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrDetectionResult:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mLastHdrDetectionValue:I

    return p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mLastHdrDetectionValue:I

    return p1
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_AUTO_DETECTION_ON:[I

    return-object v0
.end method

.method private configHdrSessionRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configHdrSessionRequest] mKeyHdrRequsetSessionMode is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configHdrSessionRequest] currrent mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mHdrSessionValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_3

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_OFF:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrOnSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrAutoSupported:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_AUTO:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_OFF:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private configPhotoCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrOnSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrAutoSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_AUTO:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_OFF:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private configVideoCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_OFF:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private initHdrPhotoSettingValues(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrOnSupported:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrAutoSupported:Z

    const-string v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_1

    aget v6, v2, v4

    const/16 v7, 0x12

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v6}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v6

    const/16 v7, 0x6a

    if-eq v6, v7, :cond_0

    const-string v6, "4"

    iget-object v7, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->geCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v2, "on"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsHdrSupported:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsHdrSupported:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "initHdrPhotoSettingValues "

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrAvailablePhotoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [I

    :cond_3
    if-eqz v2, :cond_8

    array-length p1, v2

    move v3, v1

    :goto_2
    if-ge v3, p1, :cond_8

    aget v4, v2, v3

    sget-object v6, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "photo support value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v6, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_ON:[I

    aget v6, v6, v1

    if-ne v4, v6, :cond_4

    iput-boolean v5, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsVendorHdrSupported:Z

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_AUTO:[I

    aget v6, v6, v1

    if-ne v4, v6, :cond_5

    const-string v4, "auto"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    sget-object v6, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    aget v6, v6, v1

    if-ne v4, v6, :cond_6

    iput-boolean v5, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrOnSupported:Z

    goto :goto_3

    :cond_6
    sget-object v6, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    aget v6, v6, v1

    if-ne v4, v6, :cond_7

    iput-boolean v5, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsSensorDetectionHdrAutoSupported:Z

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private initHdrVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mCameraId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyHdrAvailablePhotoModes()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrAvailablePhotoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyHdrAvailableVideoModes()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrAvailableVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyHdrDetectionResult()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrDetectionResult:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyHdrRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyHdrRequsetSessionMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initHdrVendorKey init vendor key from device spec mCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.hdrfeature.availableHdrModesPhoto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrAvailablePhotoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.hdrfeature.availableHdrModesVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrAvailableVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.mediatek.hdrfeature.hdrDetectionResult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrDetectionResult:Landroid/hardware/camera2/CaptureResult$Key;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.hdrfeature.hdrMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequestMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.hdrfeature.SessionParamhdrMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrRequsetSessionMode:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_2

    :cond_8
    return-void
.end method

.method private initHdrVideoSettingValues(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 8

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "initHdrVideoSettingValues "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mKeyHdrAvailableVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget v4, p1, v3

    sget-object v5, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video support value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v5, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    aget v5, v5, v2

    if-ne v4, v5, :cond_1

    const-string v4, "on"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsVendorHdrSupported:Z

    goto :goto_2

    :cond_1
    sget-object v5, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->CAM_HDR_FEATURE_HDR_MODE_VIDEO_AUTO:[I

    aget v5, v5, v2

    if-ne v4, v5, :cond_2

    const-string v4, "auto"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setEntryValues(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest], value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsVendorHdrSupported:Z

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->configVideoCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->configPhotoCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->configHdrSessionRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mPreviewCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public isZsdHdrSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHdrValueChanged()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public onPreviewStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsHdrSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsVendorHdrSupported:Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->initHdrVendorKey(Landroid/hardware/camera2/CameraCharacteristics;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->initHdrVideoSettingValues(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->initHdrPhotoSettingValues(Landroid/hardware/camera2/CameraCharacteristics;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->resetRestriction()V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mHdrSessionValue:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCameraCharacteristics], mIsHdrSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mIsHdrSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrRequestConfigure;->mCameraId:I

    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
