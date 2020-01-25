.class public Lcom/freeme/camera/common/debug/profiler/LogFormatter;
.super Ljava/lang/Object;
.source "LogFormatter.java"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final format(DLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "[%7sms]%7s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "%.3f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    aput-object p3, v1, v3

    iget-object p1, p0, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->mName:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "[%7sms]%7s %s [%6sms] - %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "%.3f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    aput-object p3, v1, v3

    iget-object p1, p0, Lcom/freeme/camera/common/debug/profiler/LogFormatter;->mName:Ljava/lang/String;

    const/4 p3, 0x2

    aput-object p1, v1, p3

    const-string p1, "%.3f"

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, p3, p2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const/4 p1, 0x4

    aput-object p6, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
