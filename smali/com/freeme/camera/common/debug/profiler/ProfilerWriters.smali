.class public Lcom/freeme/camera/common/debug/profiler/ProfilerWriters;
.super Ljava/lang/Object;
.source "ProfilerWriters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$DebugWriter;
    }
.end annotation


# static fields
.field private static sDebugWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$DebugWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$DebugWriter;-><init>(Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$1;)V

    sput-object v0, Lcom/freeme/camera/common/debug/profiler/ProfilerWriters;->sDebugWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogWriter()Lcom/freeme/camera/common/debug/profiler/ILogWriter;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/debug/profiler/ProfilerWriters;->sDebugWriter:Lcom/freeme/camera/common/debug/profiler/ILogWriter;

    return-object v0
.end method
