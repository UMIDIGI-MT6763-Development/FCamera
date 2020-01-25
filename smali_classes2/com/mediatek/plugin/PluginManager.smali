.class public Lcom/mediatek/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/plugin/PluginManager$PreloaderListener;
    }
.end annotation


# static fields
.field private static final DEX_DIR:Ljava/lang/String; = "plugin_manager_dex"

.field private static final NATIVE_LIB_DIR:Ljava/lang/String; = "plugin_manager_lib"

.field private static final TAG:Ljava/lang/String; = "PluginManager/PluginManager"

.field private static sPluginManager:Lcom/mediatek/plugin/PluginManager;


# instance fields
.field private mArchiveDir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDexDir:Ljava/lang/String;

.field private mNativeLibDir:Ljava/lang/String;

.field private mRegistry:Lcom/mediatek/plugin/PluginRegistry;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/plugin/PluginManager;->mArchiveDir:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager;->mContext:Landroid/content/Context;

    const-string v0, "plugin_manager_lib"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager;->mNativeLibDir:Ljava/lang/String;

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager;->mContext:Landroid/content/Context;

    const-string v0, "plugin_manager_dex"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager;->mDexDir:Ljava/lang/String;

    new-instance p1, Lcom/mediatek/plugin/PluginRegistry;

    invoke-direct {p1}, Lcom/mediatek/plugin/PluginRegistry;-><init>()V

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/plugin/PluginManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/plugin/PluginManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/plugin/PluginManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/plugin/PluginManager;->mNativeLibDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/plugin/PluginManager;)Lcom/mediatek/plugin/PluginRegistry;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    return-object p0
.end method

.method private activePlugin(Ljava/lang/String;Lcom/mediatek/plugin/element/PluginDescriptor;)Lcom/mediatek/plugin/Plugin;
    .locals 4

    const-string v0, ">>>>PluginManager-activePlugin"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activePlugin> begin, pluginId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getRequirePluginDes()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/plugin/element/PluginDescriptor;

    iget-object v2, v2, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    invoke-virtual {v3, v2}, Lcom/mediatek/plugin/PluginRegistry;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/plugin/element/PluginDescriptor;

    invoke-direct {p0, v2, v0}, Lcom/mediatek/plugin/PluginManager;->activePlugin(Ljava/lang/String;Lcom/mediatek/plugin/element/PluginDescriptor;)Lcom/mediatek/plugin/Plugin;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/mediatek/plugin/PluginManager;->doActivePlugin(Ljava/lang/String;Lcom/mediatek/plugin/element/PluginDescriptor;)Lcom/mediatek/plugin/Plugin;

    move-result-object p2

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activePlugin> end, doactive itsself! plugin id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Active required plugin failed!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "PluginManager/PluginManager"

    const-string p2, "<activePlugin> end, retun null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const/4 p1, 0x0

    return-object p1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/plugin/PluginManager;->doActivePlugin(Ljava/lang/String;Lcom/mediatek/plugin/element/PluginDescriptor;)Lcom/mediatek/plugin/Plugin;

    move-result-object p2

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<activePlugin> end, requirePluginDes size is 0, doactive itsself! plugin id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private doActivePlugin(Ljava/lang/String;Lcom/mediatek/plugin/element/PluginDescriptor;)Lcom/mediatek/plugin/Plugin;
    .locals 7

    const-string v0, ">>>>PluginManager-doActivePlugin"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<doActivePlugin> begin, pluginId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mediatek/plugin/PluginClassLoader;

    invoke-virtual {p2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getArchivePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/plugin/PluginManager;->mDexDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/plugin/PluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/plugin/PluginClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p2}, Lcom/mediatek/plugin/PluginManager;->getRequiredClassLoader(Lcom/mediatek/plugin/element/PluginDescriptor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/plugin/PluginClassLoader;->setRequiredClassLoader(Ljava/util/ArrayList;)V

    :try_start_0
    const-string v1, "PluginManager/PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<doActivePlugin> pluginDescriptor.className "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/mediatek/plugin/element/PluginDescriptor;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Lcom/mediatek/plugin/element/PluginDescriptor;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/plugin/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/mediatek/plugin/element/PluginDescriptor;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/mediatek/plugin/utils/ReflectUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/mediatek/plugin/utils/ReflectUtils;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mediatek/plugin/Plugin;

    invoke-virtual {p2}, Lcom/mediatek/plugin/Plugin;->start()V

    iget-object v0, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/plugin/PluginRegistry;->setPlugin(Ljava/lang/String;Lcom/mediatek/plugin/Plugin;)V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<doActivePlugin> ClassNotFoundException, pluginId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getAllArchivePath()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PluginManager/PluginManager"

    const-string v1, "<getAllArchivePath> begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mediatek/plugin/PluginManager;->mArchiveDir:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/plugin/utils/FileUtils;->getAllFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "PluginManager/PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<getAllArchivePath> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "PluginManager/PluginManager"

    const-string v2, "<getAllArchivePath> end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/plugin/PluginManager;
    .locals 1

    sget-object v0, Lcom/mediatek/plugin/PluginManager;->sPluginManager:Lcom/mediatek/plugin/PluginManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/plugin/PluginManager;

    invoke-direct {v0, p0}, Lcom/mediatek/plugin/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/plugin/PluginManager;->sPluginManager:Lcom/mediatek/plugin/PluginManager;

    :cond_0
    sget-object p0, Lcom/mediatek/plugin/PluginManager;->sPluginManager:Lcom/mediatek/plugin/PluginManager;

    return-object p0
.end method

.method private getRequiredClassLoader(Lcom/mediatek/plugin/element/PluginDescriptor;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/element/PluginDescriptor;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    const-string v0, ">>>>PluginManager-getRequiredClassLoader"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    const-string v0, "PluginManager/PluginManager"

    const-string v1, "<getRequiredClassLoader> begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getRequirePluginDes()Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PluginManager/PluginManager"

    const-string v0, "<getRequiredClassLoader> end, requirePluginDes == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/PluginDescriptor;

    iget-object v1, v1, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    invoke-virtual {v2, v1}, Lcom/mediatek/plugin/PluginRegistry;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/plugin/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "PluginManager/PluginManager"

    const-string v1, "<getRequiredClassLoader> end"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v0
.end method


# virtual methods
.method public addPluginDir(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<addPluginDir> path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginManager;->mArchiveDir:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;
    .locals 3

    const-string v0, ">>>>PluginManager-getPlugin"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    const-string v0, "PluginManager/PluginManager"

    const-string v1, "<getPlugin> begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getPluginDescriptor(Ljava/lang/String;)Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    invoke-virtual {v1, p1}, Lcom/mediatek/plugin/PluginRegistry;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string p1, "PluginManager/PluginManager"

    const-string v2, "<getPlugin> plugin != null"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    monitor-exit v0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "PluginManager/PluginManager"

    const-string v1, "<getPlugin> pluginDescriptor is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/mediatek/plugin/PluginManager;->activePlugin(Ljava/lang/String;Lcom/mediatek/plugin/element/PluginDescriptor;)Lcom/mediatek/plugin/Plugin;

    move-result-object p1

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRegistry()Lcom/mediatek/plugin/PluginRegistry;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/PluginManager;->mRegistry:Lcom/mediatek/plugin/PluginRegistry;

    return-object v0
.end method

.method public preloadAllPlugins(Lcom/mediatek/plugin/PluginManager$PreloaderListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/mediatek/plugin/PluginManager;->preloadAllPlugins(ZZZLcom/mediatek/plugin/PluginManager$PreloaderListener;)V

    return-void
.end method

.method public preloadAllPlugins(ZZZLcom/mediatek/plugin/PluginManager$PreloaderListener;)V
    .locals 11

    invoke-direct {p0}, Lcom/mediatek/plugin/PluginManager;->getAllArchivePath()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v7, :cond_1

    new-instance v10, Lcom/mediatek/plugin/PluginManager$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move v3, v9

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/plugin/PluginManager$1;-><init>(Lcom/mediatek/plugin/PluginManager;Ljava/util/ArrayList;IZZ)V

    invoke-static {}, Lcom/mediatek/plugin/parallel/ThreadPool;->getInstance()Lcom/mediatek/plugin/parallel/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/mediatek/plugin/PluginManager$2;

    invoke-direct {v1, p0, v8, p4, p3}, Lcom/mediatek/plugin/PluginManager$2;-><init>(Lcom/mediatek/plugin/PluginManager;Ljava/util/concurrent/CountDownLatch;Lcom/mediatek/plugin/PluginManager$PreloaderListener;Z)V

    invoke-virtual {v0, v10, v1}, Lcom/mediatek/plugin/parallel/ThreadPool;->submit(Lcom/mediatek/plugin/parallel/ThreadPool$Job;Lcom/mediatek/plugin/parallel/FutureListener;)Lcom/mediatek/plugin/parallel/Future;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p1, "PluginManager/PluginManager"

    const-string p2, "<preloadAllPlugins> archivePaths empty, call onPreloadFinished directly"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4}, Lcom/mediatek/plugin/PluginManager$PreloaderListener;->onPreloadFinished()V

    return-void
.end method
