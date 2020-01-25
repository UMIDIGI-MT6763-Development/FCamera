.class public Lcom/mediatek/plugin/zip/JarFile;
.super Lcom/mediatek/plugin/zip/ZipFile;
.source "JarFile.java"


# instance fields
.field private mResource:Lcom/mediatek/plugin/res/IResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, ".jar"

    return-object v0
.end method


# virtual methods
.method public getResource(Landroid/content/Context;)Lcom/mediatek/plugin/res/IResource;
    .locals 2

    const-string v0, ">>>>JarFile-getResource"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/zip/JarFile;->mResource:Lcom/mediatek/plugin/res/IResource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/plugin/res/JarResource;

    iget-object v1, p0, Lcom/mediatek/plugin/zip/JarFile;->mFilPath:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/mediatek/plugin/res/JarResource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/plugin/zip/JarFile;->mResource:Lcom/mediatek/plugin/res/IResource;

    :cond_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    iget-object p1, p0, Lcom/mediatek/plugin/zip/JarFile;->mResource:Lcom/mediatek/plugin/res/IResource;

    return-object p1
.end method

.method public getXmlRelativePath()Ljava/lang/String;
    .locals 1

    const-string v0, "res/raw/plugin.xml"

    return-object v0
.end method
