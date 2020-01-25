.class public Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "ShutterSpeedEntry.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCameraId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    const-string p1, "0"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method private isSupportInAPI2(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSupportInAPI2] cameraId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not in device map"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceDescription;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[isSupportInAPI2] characteristics is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedHelper;->isShutterSpeedSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSupportInAPI2] cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",deviceDescriptionMap "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeed;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry$1;->$SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->isSupportInAPI2(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;->notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[notifyBeforeOpenCamera] mCameraId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedEntry;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
