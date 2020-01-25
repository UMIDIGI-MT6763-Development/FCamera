.class public Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;
.super Ljava/lang/Object;
.source "VideoQualityCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final QUALITY_INDEX_NUMBER:I = 0x2

.field private static final QUALITY_MAX_NUMBER:I = 0x4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mSupportedSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private featureCharacteristics(II)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    new-instance p2, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p2, v0, p1}, Landroid/util/Size;-><init>(II)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mSupportedSizes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private generateSupportedList(ILjava/util/ArrayList;[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget v1, p3, v0

    invoke-static {p1, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p3, v0

    invoke-direct {p0, p1, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->featureCharacteristics(II)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSupportedList add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDefaultQuality()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getSupportedListQuality(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->sMtkVideoQualities:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->generateSupportedList(ILjava/util/ArrayList;[I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->generateSupportedList(ILjava/util/ArrayList;[I)V

    :cond_0
    return-object v0
.end method

.method private getSupportedSizeForClass()[Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Can\'t get camera characteristics!"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [Landroid/util/Size;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method private getSupportedVideoSizes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->getSupportedSizeForClass()[Landroid/util/Size;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private updateSupportedValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->getSupportedListQuality(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setSupportedEntryValues(Ljava/util/List;)V

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

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->requestRestartSession()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mSupportedSizes:Ljava/util/List;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->updateSupportedValues()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->getDefaultQuality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->updateValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityCaptureRequestConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->onValueInitialized()V

    return-void
.end method
