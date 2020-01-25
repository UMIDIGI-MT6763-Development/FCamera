.class Lcom/freeme/camera/common/storage/StorageMonitor;
.super Ljava/lang/Object;
.source "StorageMonitor.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIStorageStateListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mStorage:Lcom/freeme/camera/common/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/storage/StorageMonitor;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freeme/camera/common/storage/Storage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mIStorageStateListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/freeme/camera/common/storage/StorageMonitor$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/storage/StorageMonitor$1;-><init>(Lcom/freeme/camera/common/storage/StorageMonitor;)V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/storage/StorageMonitor;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/storage/StorageMonitor;)Lcom/freeme/camera/common/storage/Storage;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/storage/StorageMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mIStorageStateListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public registerIntentFilter()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->updateDefaultDirectory()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mIStorageStateListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mIStorageStateListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mIStorageStateListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterIntentFilter()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
