.class public Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;
.super Lcom/freeme/camera/common/debug/profiler/ProfileBase;
.source "PerformanceProfile.java"


# instance fields
.field private final mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/debug/profiler/ILogWriter;Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/freeme/camera/common/debug/profiler/ProfileBase;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iput-object p1, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    return-void
.end method


# virtual methods
.method protected onMark(DD)V
    .locals 2

    iget-object p3, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    iget-object p4, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v0, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    const-string v1, "[MARK]"

    invoke-virtual {v0, p1, p2, v1}, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p4, p1}, Lcom/freeme/camera/common/debug/profiler/ILogWriter;->write(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onMark(DDLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    iget-object v1, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v2, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    const-string v5, "[MARK]"

    move-wide v3, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/common/debug/profiler/ILogWriter;->write(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    iget-object v1, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v2, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    const-string v3, "[BEGIN]"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/debug/profiler/ILogWriter;->write(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop(DD)V
    .locals 2

    iget-object p3, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    iget-object p4, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v0, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    const-string v1, "[END]"

    invoke-virtual {v0, p1, p2, v1}, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p4, p1}, Lcom/freeme/camera/common/debug/profiler/ILogWriter;->write(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop(DDLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    iget-object v1, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v2, p0, Lcom/freeme/camera/common/debug/profiler/PerformanceProfile;->mFormatter:Lcom/freeme/camera/common/debug/profiler/LogFormatter;

    const-string v5, "[END]"

    move-wide v3, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/common/debug/profiler/ILogWriter;->write(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
