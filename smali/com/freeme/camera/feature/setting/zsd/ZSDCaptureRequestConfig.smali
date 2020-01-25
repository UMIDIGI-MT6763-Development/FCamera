.class public Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;
.super Ljava/lang/Object;
.source "ZSDCaptureRequestConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final NON_ZSL_MODE:[B

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_OFF:Ljava/lang/String; = "off"

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static final ZSL_MODE:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

.field private mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->NON_ZSL_MODE:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->ZSL_MODE:[B

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/zsd/ZSD;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->isZsdSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[configCaptureRequest] zsd on"

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyZslRequestKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->ZSL_MODE:[B

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[configCaptureRequest] zsd off"

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->isSessionOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyZslRequestKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->ZSL_MODE:[B

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->getKeyZslRequestKey()Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->NON_ZSL_MODE:[B

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;->requestRestartSession()V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string v0, "off"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/DeviceDescription;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->isZslSupport()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "off"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    const-string v1, "off"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zsd/ZSDCaptureRequestConfig;->mZsd:Lcom/freeme/camera/feature/setting/zsd/ZSD;

    const-string v1, "on"

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/feature/setting/zsd/ZSD;->initializeValue(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
