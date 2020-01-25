.class public Lcom/mediatek/plugin/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/plugin/PluginRegistry$PluginEntry;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllPlugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/PluginRegistry$PluginEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PluginManager/PluginRegistry"

    iput-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    return-void
.end method

.method private getAllExtensionsAndPoints(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, ">>>>PluginRegistry-getAllExtensionsAndPoints"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {v1}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/mediatek/plugin/PluginRegistry;->setRequirePluginDes(Lcom/mediatek/plugin/element/PluginDescriptor;)V

    invoke-virtual {v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtension()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtension()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtension()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    invoke-virtual {v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtensionPoints()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtensionPoints()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtensionPoints()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method

.method private setConnectedExtensions(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    const-string v0, ">>>>PluginRegistry-setConnectedExtensions"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/plugin/element/ExtensionPoint;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/plugin/element/ExtensionPoint;

    iget-object v5, v5, Lcom/mediatek/plugin/element/ExtensionPoint;->id:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/plugin/element/Extension;

    iget-object v6, v6, Lcom/mediatek/plugin/element/Extension;->extensionPointId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<generateRelationship> Extension "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/plugin/element/ExtensionPoint;

    iget-object v7, v7, Lcom/mediatek/plugin/element/ExtensionPoint;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<generateRelationship> extensionPoint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/plugin/element/ExtensionPoint;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Lcom/mediatek/plugin/element/ExtensionPoint;->setConnectedExtensions(Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method

.method private setRequirePluginDes(Lcom/mediatek/plugin/element/PluginDescriptor;)V
    .locals 6

    const-string v0, ">>>>PluginRegistry-setRequirePluginDes"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->requiredPluginIds:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/mediatek/plugin/PluginRegistry;->getPluginDescriptor(Ljava/lang/String;)Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/mediatek/plugin/element/PluginDescriptor;->setRequirePluginDes(Ljava/util/HashMap;)V

    :cond_2
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addPluginDescriptor(Lcom/mediatek/plugin/element/PluginDescriptor;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<addPluginDescriptor> pluginDescriptor is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {v0}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/mediatek/plugin/element/PluginDescriptor;->version:I

    iget v2, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->version:I

    if-lt v1, v2, :cond_1

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<addPluginDescriptor> already contains this pluginDescriptor!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/mediatek/plugin/element/PluginDescriptor;->release()V

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;-><init>(Lcom/mediatek/plugin/PluginRegistry;Lcom/mediatek/plugin/element/PluginDescriptor;)V

    iget-object v1, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->id:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public generateRelationship()V
    .locals 3

    const-string v0, ">>>>PluginRegistry-generateRelationship"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v1, "<generateRelationship> mAllPlugins is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/mediatek/plugin/PluginRegistry;->getAllExtensionsAndPoints(Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/mediatek/plugin/PluginRegistry;->setConnectedExtensions(Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method

.method public getAllPluginsId()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllPluginsName()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v1, "<getAllPluginsName> mAllPlugins is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {v3}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/mediatek/plugin/element/PluginDescriptor;->name:Ljava/lang/String;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getAllPluginsName> pluginsName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;
    .locals 5

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getExtensionPointByClass> pointClassName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<getExtensionPointByClass> mAllPlugins is empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {v2}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtensionPoints()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/plugin/element/ExtensionPoint;

    iget-object v4, v4, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/element/ExtensionPoint;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;
    .locals 4

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getExtensionPointById> pointId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<getExtensionPointById> mAllPlugins is empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {v2}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v3, "<getExtensionPointById> descriptor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtensionPoints()Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v3, "<getExtensionPointById> descriptor.getExtensionPoints() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtensionPoints()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/ExtensionPoint;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getExtensionPointById> extentionPoint is not null, id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    return-object v1
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;
    .locals 3

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getPlugin> pluginId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<getPlugin> mAllPlugins is empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {p1}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getPlugin()Lcom/mediatek/plugin/Plugin;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getPluginDescriptor(Ljava/lang/String;)Lcom/mediatek/plugin/element/PluginDescriptor;
    .locals 3

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getPluginDescriptor> pluginId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<getPluginDescriptor> mAllPlugins is empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {p1}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getPluginIdByExtensionClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getPluginIdByExtensionClass> extensionClassName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string v0, "<getPluginIdByExtensionClass> mAllPlugins is empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {v3}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/plugin/element/PluginDescriptor;->getExtension()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/plugin/element/Extension;

    iget-object v4, v4, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public setPlugin(Ljava/lang/String;Lcom/mediatek/plugin/Plugin;)V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setPlugin> pluginDescriptorId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", plugin is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/mediatek/plugin/PluginRegistry;->TAG:Ljava/lang/String;

    const-string p2, "<setPlugin> mAllPlugins is empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/plugin/PluginRegistry;->mAllPlugins:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;

    invoke-virtual {p1, p2}, Lcom/mediatek/plugin/PluginRegistry$PluginEntry;->setPlugin(Lcom/mediatek/plugin/Plugin;)V

    return-void
.end method
