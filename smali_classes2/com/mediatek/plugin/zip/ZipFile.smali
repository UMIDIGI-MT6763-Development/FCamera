.class public abstract Lcom/mediatek/plugin/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginManager/ZipFile"


# instance fields
.field protected mFilPath:Ljava/lang/String;

.field private mJarFile:Ljava/util/jar/JarFile;

.field protected mSchemaValidate:Lcom/mediatek/plugin/preload/SchemaValidate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/plugin/zip/ZipFile;->mFilPath:Ljava/lang/String;

    const-string v0, ">>>>ZipFile-new JarFile"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile;->mJarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PluginManager/ZipFile"

    const-string v1, "<ZipFile>"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method

.method private enumerateZipEntry(Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;)Ljava/util/zip/ZipEntry;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/mediatek/plugin/zip/ZipFile;->mJarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-interface {p1, v2}, Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;->consume(Ljava/util/zip/ZipEntry;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method


# virtual methods
.method public copySoLib(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, ">>>>ZipFile-copySoLib"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/plugin/preload/SoOperater;

    invoke-direct {v0}, Lcom/mediatek/plugin/preload/SoOperater;-><init>()V

    new-instance v1, Lcom/mediatek/plugin/zip/ZipFile$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/mediatek/plugin/zip/ZipFile$1;-><init>(Lcom/mediatek/plugin/zip/ZipFile;Ljava/lang/String;Lcom/mediatek/plugin/preload/SoOperater;Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/mediatek/plugin/zip/ZipFile;->enumerateZipEntry(Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "PluginManager/ZipFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<copySoLib> Copying so lib: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/plugin/zip/ZipFile;->mJarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/mediatek/plugin/preload/SoOperater;->copy(Landroid/content/Context;Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-void
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string p1, ">>>>ZipFile-getInputStream"

    invoke-static {p1}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/mediatek/plugin/zip/ZipFile$2;

    invoke-direct {p1, p0, p2}, Lcom/mediatek/plugin/zip/ZipFile$2;-><init>(Lcom/mediatek/plugin/zip/ZipFile;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/zip/ZipFile;->enumerateZipEntry(Lcom/mediatek/plugin/zip/ZipFile$ZipEntryConsumer;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "PluginManager/ZipFile"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<getInputStream> entryName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p2, p0, Lcom/mediatek/plugin/zip/ZipFile;->mJarFile:Ljava/util/jar/JarFile;

    invoke-virtual {p2, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PluginManager/ZipFile"

    const-string v0, "<getInputStream>"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object p1
.end method

.method public abstract getResource(Landroid/content/Context;)Lcom/mediatek/plugin/res/IResource;
.end method

.method public getSignature()[Landroid/content/pm/Signature;
    .locals 1

    const-string v0, ">>>>ZipFile-getSignature"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile;->mJarFile:Ljava/util/jar/JarFile;

    invoke-static {v0}, Lcom/mediatek/plugin/preload/SignatureParser;->parseSignature(Ljava/util/jar/JarFile;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return-object v0
.end method

.method public getXmlInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile;->mFilPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/plugin/zip/ZipFile;->getXmlRelativePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/plugin/zip/ZipFile;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getXmlRelativePath()Ljava/lang/String;
.end method

.method public recycle()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile;->mJarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PluginManager/ZipFile"

    const-string v2, "<recycle>"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public validateXML(Ljava/io/InputStream;)Z
    .locals 2

    const-string v0, ">>>>ZipFile-validateXML"

    invoke-static {v0}, Lcom/mediatek/plugin/utils/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile;->mSchemaValidate:Lcom/mediatek/plugin/preload/SchemaValidate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/plugin/preload/SchemaValidate;

    invoke-direct {v0}, Lcom/mediatek/plugin/preload/SchemaValidate;-><init>()V

    iput-object v0, p0, Lcom/mediatek/plugin/zip/ZipFile;->mSchemaValidate:Lcom/mediatek/plugin/preload/SchemaValidate;

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/plugin/zip/ZipFile;->getXmlInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/plugin/zip/ZipFile;->mSchemaValidate:Lcom/mediatek/plugin/preload/SchemaValidate;

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/plugin/preload/SchemaValidate;->validateXMLFile(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p1

    invoke-static {}, Lcom/mediatek/plugin/utils/TraceHelper;->endSection()V

    return p1
.end method
