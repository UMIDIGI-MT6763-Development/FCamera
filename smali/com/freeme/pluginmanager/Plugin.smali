.class public Lcom/freeme/pluginmanager/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FREEME_DBG]Plugin"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mHostContext:Landroid/content/Context;

.field private mInstance:Lcom/freeme/pluginmanager/BasePlugin;

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/pluginmanager/Plugin;->mHostContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/freeme/pluginmanager/Plugin;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lcom/freeme/pluginmanager/Plugin;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/freeme/pluginmanager/Plugin;->initialize()V

    return-void
.end method

.method private createPluginObject()V
    .locals 6

    const-string v0, "[FREEME_DBG]Plugin"

    const-string v1, "createPluginObject(): Enter "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Lcom/freeme/pluginmanager/Plugin;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/pluginmanager/Plugin;->mHostContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_0
    iget-object v1, p0, Lcom/freeme/pluginmanager/Plugin;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/freeme/pluginmanager/Plugin;->mHostContext:Landroid/content/Context;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/freeme/pluginmanager/Plugin;->mPackageName:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/pluginmanager/BasePlugin;

    iput-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mInstance:Lcom/freeme/pluginmanager/BasePlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[FREEME_DBG]Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPluginObject(): error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.freeme.plugin.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mType:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/freeme/pluginmanager/Plugin;->createPluginObject()V

    iget-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mInstance:Lcom/freeme/pluginmanager/BasePlugin;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/freeme/pluginmanager/BasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/pluginmanager/Plugin;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mName:Ljava/lang/String;

    const-string v0, "[FREEME_DBG]Plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize(): plugin name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/pluginmanager/Plugin;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/freeme/pluginmanager/BasePlugin;
    .locals 1

    iget-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mInstance:Lcom/freeme/pluginmanager/BasePlugin;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/pluginmanager/Plugin;->mType:Ljava/lang/String;

    return-object v0
.end method
