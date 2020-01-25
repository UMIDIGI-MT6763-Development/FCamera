.class public Lcom/baidu/location/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/baidu/location/b/f;


# static fields
.field private static ig:Lcom/baidu/location/e/l;


# instance fields
.field private ia:Landroid/hardware/SensorManager;

.field private ib:Z

.field private ic:Z

.field private id:F

.field private ie:[F

.field private ih:D

.field private ii:[F

.field private ij:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/baidu/location/e/l;->ih:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/l;->ib:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/l;->ij:Z

    return-void
.end method

.method public static ce()Lcom/baidu/location/e/l;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/l;->ig:Lcom/baidu/location/e/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/l;

    invoke-direct {v0}, Lcom/baidu/location/e/l;-><init>()V

    sput-object v0, Lcom/baidu/location/e/l;->ig:Lcom/baidu/location/e/l;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/l;->ig:Lcom/baidu/location/e/l;

    return-object v0
.end method


# virtual methods
.method public ca()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/l;->ib:Z

    return v0
.end method

.method public case(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/l;->ic:Z

    return-void
.end method

.method public cb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/l;->ic:Z

    return v0
.end method

.method public declared-synchronized cc()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/e/l;->ij:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/baidu/location/e/l;->ic:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/baidu/location/e/l;->ib:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/l;->ij:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cd()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/e/l;->ih:D

    return-wide v0
.end method

.method public declared-synchronized cf()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/e/l;->ij:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/l;->ia:Landroid/hardware/SensorManager;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/l;->ij:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cg()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/e/l;->id:F

    return v0
.end method

.method public char(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/l;->ib:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/baidu/location/e/l;->ii:[F

    iget-object p1, p0, Lcom/baidu/location/e/l;->ii:[F

    if-eqz p1, :cond_3

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, p1, v2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/baidu/location/e/l;->id:F

    iget p1, p0, Lcom/baidu/location/e/l;->id:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    :goto_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/baidu/location/e/l;->id:F

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/baidu/location/e/l;->ie:[F

    const p1, 0x447d5000    # 1013.25f

    iget-object v0, p0, Lcom/baidu/location/e/l;->ie:[F

    aget v0, v0, v2

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getAltitude(FF)F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/baidu/location/e/l;->ih:D

    :cond_3
    :goto_1
    return-void
.end method
