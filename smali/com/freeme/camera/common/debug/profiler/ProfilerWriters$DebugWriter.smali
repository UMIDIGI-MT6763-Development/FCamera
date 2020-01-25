.class Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$DebugWriter;
.super Ljava/lang/Object;
.source "ProfilerWriters.java"

# interfaces
.implements Lcom/freeme/camera/common/debug/profiler/ILogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/debug/profiler/ProfilerWriters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/debug/profiler/ProfilerWriters$DebugWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
