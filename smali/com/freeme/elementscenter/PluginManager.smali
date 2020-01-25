.class public Lcom/freeme/elementscenter/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/PluginManager$PluginListChanged;
    }
.end annotation


# static fields
.field private static final PLUGIN_SHARE_USER_ID:Ljava/lang/String; = "com.freeme.camera.shareduserid"

.field private static final TAG:Ljava/lang/String; = "PluginManager"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mPackageMgr:Landroid/content/pm/PackageManager;

.field private mPluginList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginOberservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/PluginManager$PluginListChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mShareUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    new-instance v0, Lcom/freeme/elementscenter/PluginManager$1;

    invoke-direct {v0, p0}, Lcom/freeme/elementscenter/PluginManager$1;-><init>(Lcom/freeme/elementscenter/PluginManager;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/freeme/elementscenter/PluginManager;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    const-string p1, "PluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginManager mShareUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/elementscenter/PluginManager;->mShareUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/freeme/elementscenter/PluginManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/freeme/elementscenter/PluginManager;->scanPlugins()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/PluginManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/PluginManager;->queryOldPlugin(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/elementscenter/PluginManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/PluginManager;->notifyChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/elementscenter/PluginManager;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private clearListener()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private notifyChanged()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/PluginManager$PluginListChanged;

    iget-object v2, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/freeme/elementscenter/PluginManager$PluginListChanged;->OnPluginListChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queryOldPlugin(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private scanPlugins()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    const-string v2, "com.freeme.camera.shareduserid"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/freeme/elementscenter/PluginManager$PluginListChanged;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getPluginList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    return-object v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/freeme/elementscenter/PluginManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/PluginManager;->clearListener()V

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeListener(Lcom/freeme/elementscenter/PluginManager$PluginListChanged;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager;->mPluginOberservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
