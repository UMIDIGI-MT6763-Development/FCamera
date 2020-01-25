.class public Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;
.super Ljava/lang/Object;
.source "VideoQualityParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final QUALITY_INDEX_NUMBER:I = 0x2

.field private static final QUALITY_MAX_NUMBER:I = 0x4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSupportedSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private featureByParameter(II)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSupportedSizes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
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

    invoke-direct {p0, p1, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->featureByParameter(II)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

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
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

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

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->generateSupportedList(ILjava/util/ArrayList;[I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->generateSupportedList(ILjava/util/ArrayList;[I)V

    :cond_0
    return-object v0
.end method

.method private updateSupportedValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSupportedSizes:Ljava/util/List;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedValues()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getDefaultQuality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->updateValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/videoquality/VideoQuality;->onValueInitialized()V

    return-void
.end method
