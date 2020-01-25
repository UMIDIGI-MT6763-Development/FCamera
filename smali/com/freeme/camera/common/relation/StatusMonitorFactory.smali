.class public Lcom/freeme/camera/common/relation/StatusMonitorFactory;
.super Ljava/lang/Object;
.source "StatusMonitorFactory.java"


# instance fields
.field private final mStatusMonitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/relation/StatusMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitorFactory;->mStatusMonitors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitorFactory;->mStatusMonitors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/relation/StatusMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/relation/StatusMonitor;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/StatusMonitor;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/relation/StatusMonitorFactory;->mStatusMonitors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
