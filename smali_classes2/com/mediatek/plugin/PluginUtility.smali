.class public Lcom/mediatek/plugin/PluginUtility;
.super Ljava/lang/Object;
.source "PluginUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/PluginUtility"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createInstance(Lcom/mediatek/plugin/PluginManager;Lcom/mediatek/plugin/element/Extension;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, ">>>>PluginUtility-createInstance"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    const-string v0, "PluginManager/PluginUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<createInstance> Extension class name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/mediatek/plugin/element/Extension;->getParent()Lcom/mediatek/plugin/element/Element;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/plugin/element/Element;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<createInstance> plugin is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object p1, p1, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "PluginManager/PluginUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<createInstance> clazz "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array p0, v2, [Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/mediatek/plugin/utils/ReflectUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/mediatek/plugin/utils/ReflectUtils;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object p0

    :cond_1
    new-array v3, v1, [Ljava/lang/Class;

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v4, p2, v2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v2

    aget-object v4, p2, v2

    instance-of v4, v4, Landroid/content/Context;

    if-eqz v4, :cond_3

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    :cond_3
    aget-object v4, p2, v2

    instance-of v4, v4, Landroid/content/res/Resources;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/plugin/Plugin;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/plugin/element/PluginDescriptor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aput-object v4, p2, v2

    :cond_4
    const-string v4, "PluginManager/PluginUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<createInstance> parameterTypes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {p1, v3}, Lcom/mediatek/plugin/utils/ReflectUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const-string p1, "PluginManager/PluginUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<createInstance> cons "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_6

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v0

    :cond_6
    invoke-static {p0, p2}, Lcom/mediatek/plugin/utils/ReflectUtils;->createInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v0
.end method

.method public static getAllPluginsName(Lcom/mediatek/plugin/PluginManager;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginRegistry;->getAllPluginsName()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExt(Lcom/mediatek/plugin/PluginManager;Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    const-string v0, ">>>>PluginUtility-getExt"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getExt(Lcom/mediatek/plugin/PluginManager;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mediatek/plugin/PluginUtility;->getExt(Lcom/mediatek/plugin/element/ExtensionPoint;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static getExt(Lcom/mediatek/plugin/element/ExtensionPoint;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/element/ExtensionPoint;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<getExt> extensionPoint is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/plugin/element/Extension;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/mediatek/plugin/element/Extension;->pluginId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<getExt> connectedExtentions is null or connectedExtentions is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static getExtByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<loadExtClass> extensionPoint is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getExtByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mediatek/plugin/PluginUtility;->getExt(Lcom/mediatek/plugin/element/ExtensionPoint;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getExtByPointId(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<loadExtClass> extensionPoint is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getExtByPointId(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mediatek/plugin/element/Extension;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mediatek/plugin/PluginUtility;->getExt(Lcom/mediatek/plugin/element/ExtensionPoint;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getExtClass(Lcom/mediatek/plugin/PluginManager;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mediatek/plugin/PluginUtility;->getExtClassByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtClass(Lcom/mediatek/plugin/PluginManager;Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/mediatek/plugin/PluginUtility;->getExtClassByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtClassByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string v0, "<getExtClassByClassName> extentionPoint is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PluginManager/PluginUtility"

    const-string v0, "<getExtClassByClassName> connectedExtentions is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/Extension;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string v1, "PluginManager/PluginUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getExtClassByClassName> className["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "PluginManager/PluginUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<getExtClassByClassName> class name is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getExtClassByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p2, "<getExtClassByClassName> extentionPoint is null!"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PluginManager/PluginUtility"

    const-string p2, "<getExtClassByClassName> connectedExtentions is null!"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/Extension;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/mediatek/plugin/element/Extension;->pluginId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/mediatek/plugin/element/Extension;->className:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string v1, "PluginManager/PluginUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getExtClassByClassName> className["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "PluginManager/PluginUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<getExtClassByClassName> class name is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getExtClassByPointId(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p1

    iget-object p1, p1, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mediatek/plugin/PluginUtility;->getExtClassByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtClassByPointId(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p1

    iget-object p1, p1, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/mediatek/plugin/PluginUtility;->getExtClassByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mediatek/plugin/PluginUtility;->getExtNameByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/mediatek/plugin/PluginUtility;->getExtNameByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtNameByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string v0, "<getExtNameByClassName> extentionPoint is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PluginManager/PluginUtility"

    const-string v0, "<getExtNameByClassName> connectedExtentions is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/Extension;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/mediatek/plugin/element/Extension;->name:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string v1, "PluginManager/PluginUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getExtNameByClassName> extName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "PluginManager/PluginUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<getExtNameByClassName> class name is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getExtNameByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointByClass(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p2, "<getExtNameByClassName> extentionPoint is null!"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/ExtensionPoint;->getConnectedExtensions()Ljava/util/HashMap;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PluginManager/PluginUtility"

    const-string p2, "<getExtNameByClassName> connectedExtentions is null!"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, p1, [Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/plugin/element/Extension;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/mediatek/plugin/element/Extension;->pluginId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/mediatek/plugin/element/Extension;->name:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string v1, "PluginManager/PluginUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getExtNameByClassName> extName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "PluginManager/PluginUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<getExtNameByClassName> class name is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getExtNameByPointId(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p1

    iget-object p1, p1, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mediatek/plugin/PluginUtility;->getExtNameByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtNameByPointId(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getExtensionPointById(Ljava/lang/String;)Lcom/mediatek/plugin/element/ExtensionPoint;

    move-result-object p1

    iget-object p1, p1, Lcom/mediatek/plugin/element/ExtensionPoint;->className:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/mediatek/plugin/PluginUtility;->getExtNameByClassName(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResources(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/Plugin;->getDescriptor()Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/plugin/element/PluginDescriptor;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static loadExtClass(Lcom/mediatek/plugin/PluginManager;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/PluginManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mediatek/plugin/PluginManager;->getRegistry()Lcom/mediatek/plugin/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->getPluginIdByExtensionClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<loadExtClass> pluginId is null, valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "PluginManager/PluginUtility"

    const-string p1, "<loadExtClass> plugin is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/Plugin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const-string p0, "PluginManager/PluginUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<loadExtClass> ClassNotFoundException! className: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
