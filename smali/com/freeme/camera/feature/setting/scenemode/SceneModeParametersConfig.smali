.class public Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;
.super Ljava/lang/Object;
.source "SceneModeParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final CAPTURE_MODE_ASD:Ljava/lang/String; = "asd"

.field private static final KEY_CAPTURE_MODE:Ljava/lang/String; = "cap-mode"

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_AUTO:Ljava/lang/String; = "auto"

.field private static final VALUE_BACKLIGHT_PORTRAIT:Ljava/lang/String; = "backlight-portrait"

.field private static final VALUE_HDR_DETECTION:Ljava/lang/String; = "hdr-detection"

.field private static final VALUE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final VALUE_NIGHT:Ljava/lang/String; = "night"

.field private static final VALUE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static sSceneMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

.field private mDetectedValue:Ljava/lang/String;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mIsAsdChanged:Z

.field private mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

.field private mSupportedSceneMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "night"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hdr-detection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "portrait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "landscape"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "night-portrait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "backlight-portrait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSupportedSceneMode:Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sSceneMapping:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)Lcom/freeme/camera/feature/setting/scenemode/SceneMode;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDetectedValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDetectedValue:Ljava/lang/String;

    return-object p1
.end method

.method private setAsdCallback(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto-scene-detection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;-><init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)V

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDetectedValue:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand], mIsAsdChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mIsAsdChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mIsAsdChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->setAsdCallback(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "auto"

    :cond_1
    sget-object v2, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", lastValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mDetectedValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDetectedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v2, "auto-scene-detection"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cap-mode"

    const-string v3, "asd"

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSupportedSceneMode:Ljava/util/List;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDetectedValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDetectedValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "auto"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    const-string v2, "none"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mValue:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    const-string v4, "auto-scene-detection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "auto-scene-detection"

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    :cond_6
    :goto_3
    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mIsAsdChanged:Z

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mValue:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->sendSettingChangeRequest()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_8
    :goto_4
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mIsAsdChanged:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_9
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "cap-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "auto"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "off"

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "asd"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "auto-scene-detection"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSupportedSceneMode:Ljava/util/List;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->mSceneMode:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
