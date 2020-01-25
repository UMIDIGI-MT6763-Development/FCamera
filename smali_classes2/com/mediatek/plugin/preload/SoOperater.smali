.class public Lcom/mediatek/plugin/preload/SoOperater;
.super Ljava/lang/Object;
.source "SoOperater.java"


# static fields
.field public static final CPU_ARMEABI:Ljava/lang/String; = "armeabi"

.field public static final CPU_MIPS:Ljava/lang/String; = "mips"

.field public static final CPU_X86:Ljava/lang/String; = "x86"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "dynamic_load_configs"

.field public static final STEP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "PluginManager/SoOperater"


# instance fields
.field private mCpuArchitect:Ljava/lang/String;

.field private mCpuName:Ljava/lang/String;

.field private mJarFile:Ljava/util/jar/JarFile;

.field private mSoFileName:Ljava/lang/String;

.field private mSoPath:Ljava/lang/String;

.field private mZipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/plugin/preload/SoOperater;->getCpuName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mCpuName:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mCpuName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/plugin/preload/SoOperater;->getCpuArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mCpuArchitect:Ljava/lang/String;

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mediatek/plugin/preload/SoOperater;->getAvailableSize(Ljava/io/InputStream;)I

    move-result p2

    new-array v1, p2, [B

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method private getAvailableSize(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    if-gtz p1, :cond_1

    const/16 p1, 0x400

    :cond_1
    return p1
.end method

.method private getCpuArch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "armeabi"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "armeabi"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "x86"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mips"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v0, "mips"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v1, ":\\s+"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-string v0, "dynamic_load_configs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private init(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mediatek/plugin/preload/SoOperater;->mJarFile:Ljava/util/jar/JarFile;

    iput-object p2, p0, Lcom/mediatek/plugin/preload/SoOperater;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/plugin/preload/SoOperater;->parseSoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoFileName:Ljava/lang/String;

    const-string p1, "PluginManager/SoOperater"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<init> mSoFileName = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoFileName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoPath:Ljava/lang/String;

    return-void
.end method

.method private final parseSoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "dynamic_load_configs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private writeSoFile2LibDir()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mJarFile:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lcom/mediatek/plugin/preload/SoOperater;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "PluginManager/SoOperater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<writeSoFile2LibDir> mSoPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PluginManager/SoOperater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<writeSoFile2LibDir> mSoFileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mediatek/plugin/preload/SoOperater;->mSoFileName:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, v2}, Lcom/mediatek/plugin/preload/SoOperater;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/mediatek/plugin/utils/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public copy(Landroid/content/Context;Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/plugin/preload/SoOperater;->init(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/plugin/preload/SoOperater;->writeSoFile2LibDir()V

    const-string p2, "PluginManager/SoOperater"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<copy> copy so lib success: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p4, "PluginManager/SoOperater"

    const-string v0, "<copy> copy so lib failed: "

    invoke-static {p4, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/plugin/preload/SoOperater;->setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public isNewSo(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/plugin/preload/SoOperater;->mCpuArchitect:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/plugin/preload/SoOperater;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
