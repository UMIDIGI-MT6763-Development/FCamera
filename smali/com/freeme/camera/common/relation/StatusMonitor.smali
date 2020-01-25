.class public Lcom/freeme/camera/common/relation/StatusMonitor;
.super Ljava/lang/Object;
.source "StatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;,
        Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;
    }
.end annotation


# instance fields
.field private final mResponderCreateDestroyLock:Ljava/lang/Object;

.field private final mResponders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;",
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

    iput-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    return-void
.end method

.method private getStatusResponderSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;-><init>(Lcom/freeme/camera/common/relation/StatusMonitor;Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$1;)V

    iget-object v2, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeStatusResponderSync(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponderCreateDestroyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/relation/StatusMonitor;->mResponders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->access$200(Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    return-object p1
.end method

.method public registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponderSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->access$000(Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor;->removeStatusResponderSync(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
