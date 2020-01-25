.class public Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$VideoSpeedControlInterface;


# instance fields
.field private a:J

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preRender(J)V
    .locals 9

    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x3e8

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->b:J

    :goto_0
    iput-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->a:J

    goto/16 :goto_5

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->c:J

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    move-wide p1, v0

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->a:J

    sub-long/2addr p1, v0

    :goto_1
    cmp-long v0, p1, v2

    const/4 v1, 0x0

    if-gez v0, :cond_2

    const-string p1, "Weird, video times went backward"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "Warning: current frame and previous frame had same timestamp"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-wide/32 v2, 0x989680

    cmp-long v0, p1, v2

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inter-frame pause was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "sec, capping at 5 sec"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v2, 0x4c4b40

    goto :goto_3

    :cond_4
    :goto_2
    move-wide v2, p1

    :goto_3
    iget-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->b:J

    add-long/2addr p1, v2

    :catch_0
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide/16 v6, 0x64

    sub-long v6, p1, v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_6

    sub-long v0, p1, v0

    const-wide/32 v6, 0x7a120

    cmp-long v8, v0, v6

    if-lez v8, :cond_5

    move-wide v0, v6

    :cond_5
    :try_start_0
    div-long v6, v0, v4

    rem-long/2addr v0, v4

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v6, v7, v0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_6
    iget-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->b:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->b:J

    iget-wide p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->a:J

    add-long/2addr p1, v2

    goto :goto_0

    :goto_5
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->b:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->a:J

    return-void
.end method

.method public setFrameRate(I)V
    .locals 4

    if-lez p1, :cond_0

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    const-wide/32 v0, 0xf4240

    int-to-long v2, p1

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoSpeedControl;->c:J

    return-void
.end method
