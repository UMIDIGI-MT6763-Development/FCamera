.class Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;
.super Ljava/lang/Object;
.source "SensorManagerClient.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IkoSensorEventListener"
.end annotation


# static fields
.field private static final MAX_SHAKE_EVENT_VALUE:F = 1.0f


# instance fields
.field private mHorizontalValue:F

.field private mInitTime:J

.field private mLateralValue:F

.field private mSenserValue:I

.field private mStartTimeMills:J

.field private mVerticalValue:F

.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->this$0:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mSenserValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;-><init>(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mStartTimeMills:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mStartTimeMills:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mHorizontalValue:F

    sub-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mVerticalValue:F

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mLateralValue:F

    sub-float/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v9

    if-gtz v6, :cond_3

    cmpl-float v6, v7, v9

    if-gtz v6, :cond_3

    cmpl-float v6, v8, v9

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mSenserValue:I

    if-ne v6, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mInitTime:J

    :cond_1
    iget-wide v6, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mInitTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->this$0:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->access$000(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;)Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;->isSilent()V

    :cond_2
    iput v1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mSenserValue:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mSenserValue:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->this$0:Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;->access$000(Lcom/freeme/camera/feature/mode/iko/SensorManagerClient;)Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$OnShakeListener;->isShake()V

    :cond_4
    iput v3, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mSenserValue:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mInitTime:J

    :goto_1
    iput v0, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mHorizontalValue:F

    iput v2, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mVerticalValue:F

    iput p1, p0, Lcom/freeme/camera/feature/mode/iko/SensorManagerClient$IkoSensorEventListener;->mLateralValue:F

    :cond_5
    return-void
.end method
