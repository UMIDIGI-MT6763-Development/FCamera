.class public Lcom/freeme/camera/DisableCameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisableCameraReceiver.java"


# static fields
.field private static final ACTIVITIES:[Ljava/lang/String;

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/DisableCameraReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "com.freeme.camera.CameraLauncher"

    const-string v1, "com.freeme.camera.VideoCamera"

    const-string v2, "com.freeme.camera.CameraActivity"

    const-string v3, "com.freeme.camera.SecureCameraActivity"

    const-string v4, "com.freeme.camera.CaptureActivity"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private disableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private hasBackCamera()Z
    .locals 5

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    sget-object v0, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back camera found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "no back camera"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private hasCamera()Z
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGmoRam()Z
    .locals 4

    const-string v0, "ro.vendor.gmo.ram_optimize"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sget-object v0, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isGmoRam]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private isLowRam()Z
    .locals 4

    const-string v0, "true"

    const-string v1, "ro.config.low_ram"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/mediatek/camera/portability/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isLowRam]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/DisableCameraReceiver;->hasCamera()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "disable all camera activities"

    invoke-static {p2, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_0
    sget-object p2, Lcom/freeme/camera/DisableCameraReceiver;->ACTIVITIES:[Ljava/lang/String;

    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object p2, p2, v0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/DisableCameraReceiver;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/freeme/camera/DisableCameraReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/DisableCameraReceiver$1;-><init>(Lcom/freeme/camera/DisableCameraReceiver;Landroid/content/Context;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Lcom/freeme/camera/DisableCameraReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/DisableCameraReceiver;->isLowRam()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/freeme/camera/DisableCameraReceiver;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "kill process for low ram project"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_2
    return-void
.end method
