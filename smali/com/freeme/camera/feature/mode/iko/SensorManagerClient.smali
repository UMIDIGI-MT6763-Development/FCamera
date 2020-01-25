.class public Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;
.super Ljava/lang/Object;
.source "SensorManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;,
        Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnShakeListener:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;)Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mOnShakeListener:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;

    return-object p0
.end method


# virtual methods
.method public registerSenstorListener()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensor:Landroid/hardware/Sensor;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;-><init>(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public removeSensorManager()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public setSensorEventListener(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mOnShakeListener:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;

    return-void
.end method

.method public unRegisterSensorListener()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    :cond_0
    iput-object v1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method
