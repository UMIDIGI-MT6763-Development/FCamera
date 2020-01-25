.class public Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;
.super Ljava/lang/Object;
.source "HdrParameterConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/hdr/IHdr$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;
    }
.end annotation


# static fields
.field private static final HDR_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final HDR_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final HDR_ON_VALUE:Ljava/lang/String; = "on"

.field private static final KEY_HDR_AUTO_MODE:Ljava/lang/String; = "hdr-auto-mode"

.field private static final KEY_HDR_VIDEO:Ljava/lang/String; = "video-hdr"

.field private static final KEY_HDR_VIDEO_VALUES:Ljava/lang/String; = "video-hdr-values"

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final SCENE_HDR_DETECTION_OFF:I = 0x9

.field private static final SCENE_HDR_DETECTION_ON:I = 0xa

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final sIsDualCameraSupport:Z


# instance fields
.field private final mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

.field private mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field private mHdrParameterValues:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

.field private mIsHdrDetectionSupported:Z

.field private mIsPreviewStarted:Z

.field private mLastScene:I

.field private mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mVendorDataCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "ro.vendor.mtk_cam_dualzoom_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->sIsDualCameraSupport:Z

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/hdr/Hdr;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mLastScene:I

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mVendorDataCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    new-instance p1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$1;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)Lcom/freeme/camera/feature/setting/hdr/Hdr;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mLastScene:I

    return p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mLastScene:I

    return p1
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private configPhotoHdrValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$2;->$SwitchMap$com$freeme$camera$feature$setting$hdr$IHdr$HdrModeType:[I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->setPhotoHdrParametersTypeNonhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->setPhotoHdrParametersTypeMvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->setPhotoHdrParametersTypeZvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->isParametersValueChanged(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private configVideoHdrValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$2;->$SwitchMap$com$freeme$camera$feature$setting$hdr$IHdr$HdrModeType:[I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->setVideoHdrParametersTypeMvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->setVideoHdrParametersTypeZvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->isParametersValueChanged(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getParametersSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private initHdrPhotoSettingValues(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isHdrSceneModeSupport(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isHdrDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_PHOTP:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_2
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isSingleFrameHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_3
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isHdrSceneModeSupport(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->SCENE_MODE_DEFAULT:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private initHdrVideoSettingValues(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isSingleFrameHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isHdrDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isSingleFrameHDRSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->isHdrSceneModeSupport(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->sIsDualCameraSupport:Z

    if-eqz p1, :cond_4

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->SCENE_MODE_DEFAULT:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrModeType:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private isHdrDetectionSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    const-string v0, "true"

    const-string v1, "hdr-detection-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isHdrDetectionSupported], enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mIsHdrDetectionSupported:Z

    return p1
.end method

.method private isHdrSceneModeSupport(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "hdr"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isHdrSceneModeSupport], enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private isSingleFrameHDRSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    const-string v0, "true"

    const-string v1, "single-frame-cap-hdr-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSingleFrameCapHdrSupported], enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    const-string v0, "video-hdr-values"

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->getParametersSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isVideoHdrSupported], enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private setExtendHdrRestriction(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction;->getHdrRelation()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/HdrRestriction$HdrRelation;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPhotoHdrParametersTypeMvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setPhotoHdrParametersTypeNonhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setPhotoHdrParametersTypeZvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setVideoHdrParametersTypeMvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private setVideoHdrParametersTypeZvhdr(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "on"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "hdr"

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    const-string p2, "video-hdr"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "video-hdr"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hdr-auto-mode"

    const-string v0, "off"

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v1, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[split] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") return "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand], value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mVendorDataCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->configVideoHdrValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->configPhotoHdrValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    invoke-virtual {v1, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->setOriginalHdrValue(Landroid/hardware/Camera$Parameters;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters], value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reconfig hdr parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public isZsdHdrSupported()Z
    .locals 4

    const-string v0, "ro.vendor.mtk_zsdhdr_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isZsdHdrSupported], enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onHdrValueChanged()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mIsHdrDetectionSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreviewStateChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mIsPreviewStarted:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mLastScene:I

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mIsHdrDetectionSupported:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "auto"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOriginalParameters], mode type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->initHdrVideoSettingValues(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->initHdrPhotoSettingValues(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdrParameterValues:Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure$HdrParameterValues;->setOriginalHdrValue(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->resetRestriction()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
