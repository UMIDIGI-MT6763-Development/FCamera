.class public Lcom/mediatek/plugin/zip/ApkFile;
.super Lcom/mediatek/plugin/zip/ZipFile;
.source "ApkFile.java"


# instance fields
.field protected mInfo:Landroid/content/pm/PackageInfo;

.field private mResource:Lcom/mediatek/plugin/res/IResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, ".apk"

    return-object v0
.end method

.method private initRes(Landroid/content/Context;)V
    .locals 3

    const-string v0, ">>>>ApkFile-initResource"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/plugin/zip/ApkFile;->mFilPath:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/plugin/zip/ApkFile;->mInfo:Landroid/content/pm/PackageInfo;

    new-instance v0, Lcom/mediatek/plugin/res/ApkResource;

    iget-object v1, p0, Lcom/mediatek/plugin/zip/ApkFile;->mFilPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/plugin/zip/ApkFile;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/mediatek/plugin/res/ApkResource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/plugin/zip/ApkFile;->mResource:Lcom/mediatek/plugin/res/IResource;

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method


# virtual methods
.method public getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/zip/ApkFile;->mInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/zip/ApkFile;->initRes(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/mediatek/plugin/zip/ApkFile;->mInfo:Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method public getResource(Landroid/content/Context;)Lcom/mediatek/plugin/res/IResource;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/zip/ApkFile;->mResource:Lcom/mediatek/plugin/res/IResource;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/zip/ApkFile;->initRes(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/mediatek/plugin/zip/ApkFile;->mResource:Lcom/mediatek/plugin/res/IResource;

    return-object p1
.end method

.method public getXmlRelativePath()Ljava/lang/String;
    .locals 1

    const-string v0, "res/raw/plugin.xml"

    return-object v0
.end method
