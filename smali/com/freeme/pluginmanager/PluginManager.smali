.class public Lcom/freeme/pluginmanager/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FREEME]PluginManager"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/freeme/pluginmanager/PluginListener;

.field private mPackageMgr:Landroid/content/pm/PackageManager;

.field private mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/pluginmanager/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private mShareUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freeme/pluginmanager/PluginListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    new-instance v0, Lcom/freeme/pluginmanager/PluginManager$1;

    invoke-direct {v0, p0}, Lcom/freeme/pluginmanager/PluginManager$1;-><init>(Lcom/freeme/pluginmanager/PluginManager;)V

    iput-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/freeme/pluginmanager/PluginManager;->mListener:Lcom/freeme/pluginmanager/PluginListener;

    iget-object p1, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/pluginmanager/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object p1, p0, Lcom/freeme/pluginmanager/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/pluginmanager/PluginManager;->mShareUserId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "package"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/freeme/pluginmanager/PluginManager;->scanPlugins()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/pluginmanager/PluginManager;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/pluginmanager/PluginManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/pluginmanager/PluginManager;->mShareUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/pluginmanager/PluginManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/pluginmanager/PluginManager;)Lcom/freeme/pluginmanager/PluginListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/pluginmanager/PluginManager;->mListener:Lcom/freeme/pluginmanager/PluginListener;

    return-object p0
.end method

.method public static createPluginObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "[FREEME]PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v6

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    new-instance v11, Ldalvik/system/PathClassLoader;

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_2
    const-string v12, "[FREEME]PluginManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activity name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v4

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v7

    invoke-virtual {v10, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v4

    iget-object v12, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    const-string v15, "[FREEME]PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "superName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v7, p1

    :try_start_3
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v4, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v7, p1

    goto :goto_3

    :catch_0
    move-object/from16 v7, p1

    :catch_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v7, p1

    goto :goto_4

    :catch_2
    move-object/from16 v7, p1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v7, p1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p1

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    return-object v2

    :catch_3
    return-object v2
.end method

.method private scanPlugins()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/freeme/pluginmanager/PluginManager;->mShareUserId:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[FREEME]PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/freeme/pluginmanager/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x81

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    new-instance v6, Lcom/freeme/pluginmanager/Plugin;

    iget-object v7, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v5}, Lcom/freeme/pluginmanager/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v6}, Lcom/freeme/pluginmanager/Plugin;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mListener:Lcom/freeme/pluginmanager/PluginListener;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v1, v2}, Lcom/freeme/pluginmanager/PluginListener;->onRefreshPlugins(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void

    :catch_1
    return-void
.end method


# virtual methods
.method public notifyOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/pluginmanager/Plugin;

    invoke-virtual {v1}, Lcom/freeme/pluginmanager/Plugin;->getInstance()Lcom/freeme/pluginmanager/BasePlugin;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freeme/pluginmanager/Plugin;->getInstance()Lcom/freeme/pluginmanager/BasePlugin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/freeme/pluginmanager/BasePlugin;->notifyOrientationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/pluginmanager/Plugin;

    invoke-virtual {v1}, Lcom/freeme/pluginmanager/Plugin;->getInstance()Lcom/freeme/pluginmanager/BasePlugin;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freeme/pluginmanager/Plugin;->getInstance()Lcom/freeme/pluginmanager/BasePlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/pluginmanager/BasePlugin;->release()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/pluginmanager/PluginManager;->mPackageMgr:Landroid/content/pm/PackageManager;

    return-void
.end method
