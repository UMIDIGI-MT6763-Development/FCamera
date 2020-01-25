.class public Lcom/freeme/camera/common/relation/DataStore;
.super Ljava/lang/Object;
.source "DataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;
    }
.end annotation


# static fields
.field private static final GLOBAL_SCOPE:Ljava/lang/String; = "_global_scope"

.field private static final PREFIX_CAMERA_SCOPE:Ljava/lang/String; = "_preferences_"

.field private static final PREFIX_SAVING_TIMESTAMP:Ljava/lang/String; = "_saving_timestamp"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobalKeys:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private final mPrefWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/DataStore;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/relation/DataStore;->mGlobalKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/freeme/camera/common/relation/DataStore;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/freeme/camera/common/relation/DataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/relation/DataStore;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/relation/DataStore;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/relation/DataStore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/relation/DataStore;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/relation/DataStore;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method private getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/relation/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;-><init>(Lcom/freeme/camera/common/relation/DataStore;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/common/relation/DataStore;->mPrefWrapperMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method private sortSettingByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_2
    if-ne v3, v5, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :cond_2
    invoke-interface {p2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p3, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getCameraScope(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGlobalScope()Ljava/lang/String;
    .locals 1

    const-string v0, "_global_scope"

    return-object v0
.end method

.method public getSettingsKeepSavingTime(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_saving_timestamp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/relation/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    move-result-object p1

    const-string v0, "_global_scope_saving_timestamp"

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/relation/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->sortSettingByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->sortSettingByTimestamp(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore;->mGlobalKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "_global_scope"

    :cond_0
    invoke-direct {p0, p3}, Lcom/freeme/camera/common/relation/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "_global_scope"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/relation/DataStore;->mGlobalKeys:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p3}, Lcom/freeme/camera/common/relation/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p5, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_saving_timestamp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/freeme/camera/common/relation/DataStore;->getSharedPreferencesWrapperSync(Ljava/lang/String;)Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcom/freeme/camera/common/relation/DataStore$SharedPreferencesWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
