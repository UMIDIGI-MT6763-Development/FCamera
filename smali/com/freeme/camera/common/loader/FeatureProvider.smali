.class public Lcom/freeme/camera/common/loader/FeatureProvider;
.super Ljava/lang/Object;
.source "FeatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/loader/FeatureProvider$Key;,
        Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuildInLoadCondition:Landroid/os/ConditionVariable;

.field private mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifiedApi1BuildInCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifiedApi1PluginCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyApi1Sync:Ljava/lang/Object;

.field private mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLoadCondition:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/loader/FeatureProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1BuildInCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1PluginCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginLoadCondition:Landroid/os/ConditionVariable;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInLoadCondition:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifyApi1Sync:Ljava/lang/Object;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginLoadCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInLoadCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    invoke-direct {p0}, Lcom/freeme/camera/common/loader/FeatureProvider;->loadFeatureInBackground()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifyApi1Sync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/common/loader/FeatureProvider;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInLoadCondition:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/loader/FeatureProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/loader/FeatureProvider;->notifyAllApi2BuildInFeatureLoadDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/common/loader/FeatureProvider;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginLoadCondition:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/common/loader/FeatureProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/loader/FeatureProvider;->notifyAllApi2PluginFeatureLoadDone()V

    return-void
.end method

.method private loadFeatureInBackground()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/loader/FeatureProvider$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/loader/FeatureProvider$1;-><init>(Lcom/freeme/camera/common/loader/FeatureProvider;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private notifyAllApi1BuildInFeatureLoadDone()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {v3}, Lcom/freeme/camera/common/loader/DeviceDescription;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->notifyApi1BuildInFeatureLoadDone(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyAllApi1PluginFeatureLoadDone()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/loader/DeviceDescription;

    invoke-virtual {v3}, Lcom/freeme/camera/common/loader/DeviceDescription;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->notifyApi1PluginFeatureLoadDone(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyAllApi2BuildInFeatureLoadDone()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;

    sget-object v4, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v3, v1, v4}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onBuildInLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyAllApi2PluginFeatureLoadDone()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;

    sget-object v4, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v3, v1, v4}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onPluginLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyApi1BuildInFeatureLoadDone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;

    sget-object v2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v1, p1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onBuildInLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1BuildInCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1BuildInCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private notifyApi1PluginFeatureLoadDone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;

    sget-object v2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {v1, p1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onPluginLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1PluginCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1PluginCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private postNotifiedBuildInFeatureLoadDone(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifyApi1Sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1BuildInCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, v2, v3}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onBuildInLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, v2, v3}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onBuildInLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private postNotifiedPluginFeatureLoadDone(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1PluginCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, v1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onPluginLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p1, v1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;->onPluginLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getAllBuildInInstance(Ljava/lang/Class;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Ljava/util/List;
    .locals 4
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/loader/IFeatureEntry;

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, p2, v3}, Lcom/freeme/camera/common/loader/IFeatureEntry;->isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->createInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllModeItems(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Ljava/util/List;
    .locals 4
    .param p1    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;",
            ")",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/IAppUi$ModeItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/loader/IFeatureEntry;

    iget-object v3, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, p1, v3}, Lcom/freeme/camera/common/loader/IFeatureEntry;->isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getModeItem()Lcom/freeme/camera/common/IAppUi$ModeItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllPlugInInstance(Ljava/lang/Class;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Ljava/util/List;
    .locals 4
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/loader/IFeatureEntry;

    iget-object v3, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, p2, v3}, Lcom/freeme/camera/common/loader/IFeatureEntry;->isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->createInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getInstance(Lcom/freeme/camera/common/loader/FeatureProvider$Key;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Z)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/freeme/camera/common/loader/FeatureProvider$Key;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/freeme/camera/common/loader/FeatureProvider$Key<",
            "TT;>;",
            "Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;",
            "Z)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/FeatureProvider$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInLoadCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/FeatureProvider$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginLoadCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mAllEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/FeatureProvider$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/IFeatureEntry;

    sget-object v1, Lcom/freeme/camera/common/loader/FeatureProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInstance],key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/FeatureProvider$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",entry = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, p2, p3}, Lcom/freeme/camera/common/loader/IFeatureEntry;->isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v0}, Lcom/freeme/camera/common/loader/IFeatureEntry;->createInstance()Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1

    :cond_4
    invoke-interface {v0}, Lcom/freeme/camera/common/loader/IFeatureEntry;->createInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getInstancesByStage(Ljava/lang/Class;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;I)Ljava/util/List;
    .locals 4
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;",
            "I)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/loader/IFeatureEntry;

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, p2, v3}, Lcom/freeme/camera/common/loader/IFeatureEntry;->isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getStage()I

    move-result v3

    if-ne v3, p3, :cond_0

    invoke-interface {v2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->createInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public registerFeatureLoadDoneListener(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/common/loader/FeatureProvider;->postNotifiedBuildInFeatureLoadDone(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/loader/FeatureProvider;->postNotifiedPluginFeatureLoadDone(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V

    return-void
.end method

.method public unregisterPluginLoadDoneListener(Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mFeatureLoadDoneListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public updateCameraParameters(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraParameters] camera id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifyApi1Sync:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mNotifiedApi1BuildInCameraIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/loader/FeatureProvider;->notifyApi1BuildInFeatureLoadDone(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/loader/FeatureProvider;->notifyApi1PluginFeatureLoadDone(Ljava/lang/String;)V

    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public updateCurrentModeKey(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCurrentModeKey] current mode key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInLoadCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    return-void
.end method

.method public updateDeviceUsage(Ljava/lang/String;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateDeviceUsage] mode key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", device type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/freeme/camera/common/mode/DeviceUsage;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider;->mBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/loader/IFeatureEntry;

    const-class v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v1}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->updateDeviceUsage(Ljava/lang/String;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method
