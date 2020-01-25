.class public abstract Lcom/freeme/camera/common/debug/profiler/ProfileBase;
.super Ljava/lang/Object;
.source "ProfileBase.java"

# interfaces
.implements Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;


# instance fields
.field protected mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

.field private mLastMark:J

.field private mStartNanos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/debug/profiler/LogFormatter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    return-void
.end method

.method private getTimeFromLastMillis(J)D
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mLastMark:J

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->nanoToMillis(J)D

    move-result-wide p1

    return-wide p1
.end method

.method private getTotalMillis(J)D
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mStartNanos:J

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->nanoToMillis(J)D

    move-result-wide p1

    return-wide p1
.end method

.method private nanoToMillis(J)D
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final mark()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->onMark(DD)V

    iput-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method

.method public final mark(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v3

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->onMark(DDLjava/lang/String;)V

    iput-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method

.method protected onMark(DD)V
    .locals 0

    return-void
.end method

.method protected onMark(DDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop(DD)V
    .locals 0

    return-void
.end method

.method protected onStop(DDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mStartNanos:J

    iget-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mStartNanos:J

    iput-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mLastMark:J

    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->onStart()V

    return-object p0
.end method

.method public final stop()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v2

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->onStop(DD)V

    iput-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method

.method public final stop(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTotalMillis(J)D

    move-result-wide v3

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->getTimeFromLastMillis(J)D

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->onStop(DDLjava/lang/String;)V

    iput-wide v0, p0, Lcom/freeme/camera/common/debug/profiler/ProfileBase;->mLastMark:J

    return-void
.end method
