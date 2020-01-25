.class public Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;
.super Lcom/freeme/camera/common/device/CameraDeviceManager;
.source "CameraDeviceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "DeviceMgr"

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/device/CameraDeviceManager;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkDevicePolicy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/freeme/camera/common/device/CameraOpenException;

    sget-object v1, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->SECURITY_EXCEPTION:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/device/CameraOpenException;-><init>(Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;)V

    throw v0
.end method

.method private checkPreconditionsAndOpen(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->checkDevicePolicy()V

    sget-object p3, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkPreconditions] mProxyCreatorMap size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    if-nez p3, :cond_0

    sget-object p3, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[checkPreconditions] add new id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p3, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-direct {p3, p0, p1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;-><init>(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p3, p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$000(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Lcom/freeme/camera/common/device/CameraStateCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {p3, p2}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->access$100(Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;Lcom/freeme/camera/common/device/CameraStateCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public closeSync(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraStateCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[openCamera] "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->checkPreconditionsAndOpen(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraStateCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/device/CameraOpenException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[openCameraSync]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->checkPreconditionsAndOpen(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[recycle]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;

    invoke-virtual {v1}, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl$CameraProxyCreatorImpl;->destroyHandlerThreads()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraDeviceManagerImpl;->mCameraProxyCreatorList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
