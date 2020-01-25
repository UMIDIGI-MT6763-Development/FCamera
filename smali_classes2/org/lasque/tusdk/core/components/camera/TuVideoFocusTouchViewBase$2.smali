.class Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-static {v3}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->a(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-static {v3}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->b(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;)F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42480000    # 50.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-static {v3, v1, v2}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->a(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;J)J

    iget-object v1, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->a(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;F)F

    iget-object p1, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->notifyFoucs(Landroid/graphics/PointF;Z)Z

    :cond_0
    return-void
.end method
