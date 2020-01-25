.class public Lcom/freeme/camera/common/loader/FeatureLoader;
.super Ljava/lang/Object;
.source "FeatureLoader.java"


# static fields
.field private static final BUILD_IN_PATH:Ljava/lang/String; = "buildinplugin.xml"

.field private static final FEATURE_PLUGIN_PREFIX:Ljava/lang/String; = "String"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final XML_PARSER_FORMAT:Ljava/lang/String; = "UTF-8"

.field private static sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sPluginManager:Lcom/mediatek/plugin/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/loader/FeatureLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->sPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized createPluginManager(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/freeme/camera/common/loader/FeatureLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/common/loader/FeatureLoader;->sPluginManager:Lcom/mediatek/plugin/PluginManager;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/plugin/PluginManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/plugin/PluginManager;

    move-result-object p0

    sput-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->sPluginManager:Lcom/mediatek/plugin/PluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getFeatureNames(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eq v3, v1, :cond_2

    if-eqz v1, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "String"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    :cond_1
    :goto_1
    :pswitch_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v2, v0

    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v2, v0

    :goto_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getFeaturesParse(Ljava/lang/String;Landroid/content/Context;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string p1, "UTF-8"

    invoke-interface {v0, p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static loadBuildInFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Build-in Loading"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    invoke-static {p0}, Lcom/freeme/camera/common/loader/FeatureLoader;->createPluginManager(Landroid/content/Context;)V

    const-string v1, "buildinplugin.xml"

    invoke-static {v1, p0}, Lcom/freeme/camera/common/loader/FeatureLoader;->getFeaturesParse(Ljava/lang/String;Landroid/content/Context;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "getFeaturesParse"

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureLoader;->getFeatureNames(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFeaturesString"

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    if-nez v1, :cond_1

    sget-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[loadBuildInFeatureEntries] three is no feature plug in"

    invoke-static {p0, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0

    :cond_1
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v0, p0}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadClasses([Ljava/lang/String;Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    sget-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private static loadClasses(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    return-object v0
.end method

.method private static loadClasses([Ljava/lang/String;Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v1, Lcom/freeme/camera/common/loader/FeatureLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    aget-object v5, v5, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x2

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/common/loader/IFeatureEntry;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v5, v6

    :goto_1
    invoke-static {p2}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/freeme/camera/common/loader/IFeatureEntry;->setDeviceSpec(Lcom/freeme/camera/common/loader/DeviceSpec;)V

    invoke-interface {v5}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getFeatureEntryName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " created!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static loadPluginFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/loader/IFeatureEntry;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->sPluginEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static notifySettingBeforeOpenCamera(Landroid/content/Context;Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifySettingBeforeOpenCamera] id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", api:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadBuildInFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    sget-object p0, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/loader/IFeatureEntry;

    const-class v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v0}, Lcom/freeme/camera/common/loader/IFeatureEntry;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/freeme/camera/common/loader/IFeatureEntry;->notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static updateSettingCurrentModeKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    sget-object v0, Lcom/freeme/camera/common/loader/FeatureLoader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCurrentModeKey] current mode key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/common/loader/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-static {p0}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadBuildInFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    return-void
.end method
