.class public Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;
.super Ljava/lang/Object;
.source "CameraDeviceManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    }
.end annotation


# static fields
.field private static final FIRST_SDK_WITH_API_2:I = 0x15

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

.field private static sCurrentActivity:Landroid/app/Activity;


# instance fields
.field private mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

.field private mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "CamDeviceMgrFac"

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkConditionsBeforeGetManager(Landroid/content/Context;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 0

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Get camera device manager with api 2 must need context"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Get camera device manager,API version is not allowed to null"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getApi1DeviceManager(Landroid/content/Context;)Lcom/freeme/camera/common/device/CameraDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    :cond_0
    sget-object p1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApi1DeviceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCameraDeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-object p1
.end method

.method private getApi2DeviceManager(Landroid/content/Context;)Lcom/freeme/camera/common/device/CameraDeviceManager;
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getHighestSupportedApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/device/v2/Camera2DeviceManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    :cond_0
    sget-object p1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApi2DeviceManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Get camera device manager,API2 is not supported on this project"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHighestSupportedApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;
    .locals 2

    const-class v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    invoke-direct {v1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;-><init>()V

    sput-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    :cond_0
    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized release(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCurrentActivity:Landroid/app/Activity;

    if-eq v1, p0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[release] return for other activity is used"

    invoke-static {p0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->releaseAllCameraDeviceManagerInstance()V

    sput-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    :cond_1
    sput-object v1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCurrentActivity:Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private releaseAllCameraDeviceManagerInstance()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/CameraDeviceManager;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->mCamera2DeviceManager:Lcom/freeme/camera/common/device/CameraDeviceManager;

    :cond_0
    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->sCurrentActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public declared-synchronized getCameraDeviceManager(Landroid/content/Context;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraDeviceManager,context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",api = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->checkConditionsBeforeGetManager(Landroid/content/Context;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$1;->$SwitchMap$com$freeme$camera$common$device$CameraDeviceManagerFactory$CameraApi:[I

    invoke-virtual {p2}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getApi2DeviceManager(Landroid/content/Context;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getApi1DeviceManager(Landroid/content/Context;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get camera device manager,the API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " version don\'t support"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
