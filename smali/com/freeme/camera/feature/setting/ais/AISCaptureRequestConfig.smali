.class public Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;
.super Ljava/lang/Object;
.source "AISCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;
    }
.end annotation


# static fields
.field private static final AIS_AVAILABLE_MODES_KEY_NAME:Ljava/lang/String; = "com.freeme.mfnrfeature.availablemfbmodes"

.field private static final AIS_REQUEST_MODE_KEY_NAME:Ljava/lang/String; = "com.freeme.mfnrfeature.mfbmode"

.field private static final AIS_RESULT_MODE_KEY_NAME:Ljava/lang/String; = "com.freeme.mfnrfeature.mfbresult"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_AIS:Ljava/lang/String; = "ais"

.field private static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field private static final VALUE_MFLL:Ljava/lang/String; = "mfll"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mAis:Lcom/freeme/camera/feature/setting/ais/AIS;

.field private mAisAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAisRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAisResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mSupportedValues:Ljava/util/List;
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
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/ais/AIS;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mSupportedValues:Ljava/util/List;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAis:Lcom/freeme/camera/feature/setting/ais/AIS;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    return-void
.end method

.method private convertEnumToString(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[convertEnumToString], convert enum indexs is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget v4, p1, v3

    array-length v5, v0

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v8

    if-ne v8, v4, :cond_1

    invoke-virtual {v7}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private convertStringToEnum(Ljava/lang/String;)I
    .locals 8

    invoke-static {}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->values()[Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->getName()Ljava/lang/String;

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

    invoke-virtual {v4}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig$ModeEnum;->getValue()I

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configCaptureRequest] captureBuilder is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAis:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ais/AIS;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAis:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->getOverrideValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configCaptureRequest], value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ais override value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mSupportedValues:Ljava/util/List;

    const-string v2, "auto"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "auto"

    :cond_2
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "ais"

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->convertStringToEnum(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configCaptureRequest], mode[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->createAndChangeRepeatingRequest()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAis:Lcom/freeme/camera/feature/setting/ais/AIS;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->getCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyAisAvailableModes()Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "ais available modes key isn\'t existed"

    invoke-static {v1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyAisRequestMode()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    :cond_2
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisRequestModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v3, :cond_3

    sget-object v1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "ais request key isn\'t existed"

    invoke-static {v1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move v1, v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyAisResult()Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisResultModeKey:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v0, :cond_5

    sget-object v0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "asd result key isn\'t existed"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move v1, v2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAisAvailableModesKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mSupportedValues:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->convertEnumToString([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mSupportedValues:Ljava/util/List;

    const-string v1, "ais"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "do not support ais value"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p1, "off"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "on"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ais/AISCaptureRequestConfig;->mAis:Lcom/freeme/camera/feature/setting/ais/AIS;

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/feature/setting/ais/AIS;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
