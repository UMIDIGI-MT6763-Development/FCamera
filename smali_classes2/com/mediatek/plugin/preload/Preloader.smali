.class public Lcom/mediatek/plugin/preload/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"


# static fields
.field private static final NAME_XSD:Ljava/lang/String; = "plugin.xsd"

.field private static final TAG:Ljava/lang/String; = "PluginManager/Preloader"

.field private static sPreloader:Lcom/mediatek/plugin/preload/Preloader;


# instance fields
.field private mHasInitEnvironment:Z

.field private mHostSignature:[Landroid/content/pm/Signature;

.field private mHostVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/plugin/preload/Preloader;->mHasInitEnvironment:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostVersion:I

    return-void
.end method

.method public static getInstance()Lcom/mediatek/plugin/preload/Preloader;
    .locals 1

    sget-object v0, Lcom/mediatek/plugin/preload/Preloader;->sPreloader:Lcom/mediatek/plugin/preload/Preloader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/plugin/preload/Preloader;

    invoke-direct {v0}, Lcom/mediatek/plugin/preload/Preloader;-><init>()V

    sput-object v0, Lcom/mediatek/plugin/preload/Preloader;->sPreloader:Lcom/mediatek/plugin/preload/Preloader;

    :cond_0
    sget-object v0, Lcom/mediatek/plugin/preload/Preloader;->sPreloader:Lcom/mediatek/plugin/preload/Preloader;

    return-object v0
.end method

.method private getXsdInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    const-string v0, ">>>>Preloader-getXsdInputStream"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "plugin.xsd"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "PluginManager/Preloader"

    const-string v1, "<initXSDInputStream> IOException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object p1

    :goto_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    throw p1
.end method

.method private initHostSignature(Landroid/content/Context;)V
    .locals 2

    const-string v0, ">>>>Preloader-initHostSignature"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/plugin/preload/SignatureParser;->parseSignature(Landroid/content/Context;)[Landroid/content/pm/Signature;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostSignature:[Landroid/content/pm/Signature;

    const-string p1, "PluginManager/Preloader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<initHostSignature> mHostSignature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostSignature:[Landroid/content/pm/Signature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method

.method private initHostVersion(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, ">>>>Preloader-initHostVersion"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostVersion:I

    const-string p1, "PluginManager/Preloader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<initHostVersion> mHostVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "PluginManager/Preloader"

    const-string v1, "Invalid package name for context"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void

    :goto_1
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    throw p1
.end method

.method private declared-synchronized initPreloadEnviorment(Landroid/content/Context;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/plugin/preload/Preloader;->mHasInitEnvironment:Z

    if-nez v0, :cond_1

    const-string v0, ">>>>initPreloadEnviorment"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/plugin/zip/ApkFile;->getSuffix()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mediatek/plugin/zip/ApkFile;

    invoke-static {v0, v1}, Lcom/mediatek/plugin/zip/ZipCenter;->registerZipFile(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/mediatek/plugin/zip/JarFile;->getSuffix()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/mediatek/plugin/zip/JarFile;

    invoke-static {v0, v1}, Lcom/mediatek/plugin/zip/ZipCenter;->registerZipFile(Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/preload/Preloader;->initHostSignature(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/plugin/preload/Preloader;->initHostVersion(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mediatek/plugin/preload/Preloader;->mHasInitEnvironment:Z

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isMatchHostVersion(Lcom/mediatek/plugin/element/PluginDescriptor;)Z
    .locals 3

    iget v0, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMaxHostVersion:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostVersion:I

    iget v1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMinHostVersion:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string v0, "PluginManager/Preloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<isMatchHostVersion> version unvalidate! hostVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", plugin requireMaxHostVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMaxHostVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", plugin requireMinHostVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/mediatek/plugin/element/PluginDescriptor;->requireMinHostVersion:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public preloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/mediatek/plugin/element/PluginDescriptor;
    .locals 3

    const-string v0, ">>>>Preloader-preloadPlugin"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lcom/mediatek/plugin/preload/Preloader;->initPreloadEnviorment(Landroid/content/Context;Z)V

    invoke-static {p2}, Lcom/mediatek/plugin/zip/ZipCenter;->createZipFile(Ljava/lang/String;)Lcom/mediatek/plugin/zip/ZipFile;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "PluginManager/Preloader"

    const-string p2, "<preloadPlugin> Cannot find the ZipFile to process, return null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v1

    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->getSignature()[Landroid/content/pm/Signature;

    move-result-object p4

    iget-object v2, p0, Lcom/mediatek/plugin/preload/Preloader;->mHostSignature:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    invoke-static {v2, p4}, Lcom/mediatek/plugin/utils/ArrayUtils;->areExactMatch([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    const-string p1, "PluginManager/Preloader"

    const-string p2, "<preloadPlugin> Signature not match, return null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->recycle()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v1

    :cond_2
    if-eqz p5, :cond_3

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/preload/Preloader;->getXsdInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/mediatek/plugin/zip/ZipFile;->validateXML(Ljava/io/InputStream;)Z

    move-result p4

    if-nez p4, :cond_3

    const-string p1, "PluginManager/Preloader"

    const-string p2, "<preloadPlugin> Schema validate fail, return null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->recycle()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/zip/ZipFile;->getResource(Landroid/content/Context;)Lcom/mediatek/plugin/res/IResource;

    move-result-object p4

    new-instance p5, Lcom/mediatek/plugin/preload/XMLParser;

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->getXmlInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p5, v2, p4}, Lcom/mediatek/plugin/preload/XMLParser;-><init>(Ljava/io/InputStream;Lcom/mediatek/plugin/res/IResource;)V

    invoke-virtual {p5}, Lcom/mediatek/plugin/preload/XMLParser;->parserXML()Lcom/mediatek/plugin/element/Element;

    move-result-object p5

    check-cast p5, Lcom/mediatek/plugin/element/PluginDescriptor;

    if-nez p5, :cond_4

    const-string p1, "PluginManager/Preloader"

    const-string p2, "<preloadPlugin> parserXML return null, return null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->recycle()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v1

    :cond_4
    invoke-direct {p0, p5}, Lcom/mediatek/plugin/preload/Preloader;->isMatchHostVersion(Lcom/mediatek/plugin/element/PluginDescriptor;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "PluginManager/Preloader"

    const-string p2, "<preloadPlugin> Version is not match with host, return null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->recycle()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v1

    :cond_5
    invoke-virtual {p5, p2}, Lcom/mediatek/plugin/element/PluginDescriptor;->setArchivePath(Ljava/lang/String;)V

    instance-of p2, v0, Lcom/mediatek/plugin/zip/ApkFile;

    if-eqz p2, :cond_6

    check-cast p4, Lcom/mediatek/plugin/res/ApkResource;

    invoke-virtual {p4}, Lcom/mediatek/plugin/res/ApkResource;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/mediatek/plugin/element/PluginDescriptor;->setAssetManager(Landroid/content/res/AssetManager;)V

    invoke-virtual {p4}, Lcom/mediatek/plugin/res/ApkResource;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/mediatek/plugin/element/PluginDescriptor;->setResource(Landroid/content/res/Resources;)V

    move-object p2, v0

    check-cast p2, Lcom/mediatek/plugin/zip/ApkFile;

    invoke-virtual {p2, p1}, Lcom/mediatek/plugin/zip/ApkFile;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/mediatek/plugin/element/PluginDescriptor;->setPackageInfo(Landroid/content/pm/PackageInfo;)V

    :cond_6
    invoke-virtual {v0, p1, p3}, Lcom/mediatek/plugin/zip/ZipFile;->copySoLib(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mediatek/plugin/zip/ZipFile;->recycle()V

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object p5
.end method
