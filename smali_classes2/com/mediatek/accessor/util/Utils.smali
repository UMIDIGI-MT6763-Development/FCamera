.class public Lcom/mediatek/accessor/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DUMP_FILE_FOLDER:Ljava/lang/String;

.field public static ENABLE_BUFFER_DUMP:Z

.field public static REGEN_DEPTH:Z

.field private static final REGEN_DEPTH_CFG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static XMP_DEBUG_LOG:Z

.field private static final XMP_LOG_CFG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/mediatek/accessor/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/accessor/util/Utils;->ENABLE_BUFFER_DUMP:Z

    sput-boolean v0, Lcom/mediatek/accessor/util/Utils;->REGEN_DEPTH:Z

    sput-boolean v0, Lcom/mediatek/accessor/util/Utils;->XMP_DEBUG_LOG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dumpJps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/Utils;->DUMP_FILE_FOLDER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/regen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/Utils;->REGEN_DEPTH_CFG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/xmplog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/Utils;->XMP_LOG_CFG:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mediatek/accessor/util/Utils;->DUMP_FILE_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/mediatek/accessor/util/Utils;->ENABLE_BUFFER_DUMP:Z

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ENABLE_BUFFER_DUMP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/accessor/util/Utils;->ENABLE_BUFFER_DUMP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/accessor/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/mediatek/accessor/util/Utils;->REGEN_DEPTH_CFG:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/mediatek/accessor/util/Utils;->REGEN_DEPTH:Z

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REGEN_DEPTH: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/accessor/util/Utils;->REGEN_DEPTH:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/accessor/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/mediatek/accessor/util/Utils;->XMP_LOG_CFG:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/mediatek/accessor/util/Utils;->XMP_DEBUG_LOG:Z

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XMP_DEBUG_LOG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/accessor/util/Utils;->XMP_DEBUG_LOG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ">>>>Utils-getFileNameFromPath"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object p0
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/mediatek/accessor/util/Utils;->XMP_DEBUG_LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static readFileToBuffer(Ljava/lang/String;)[B
    .locals 4

    const-string v0, ">>>>Utils-readFileToBuffer"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<readFileToBuffer> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exists!!!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v2

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v2, "<readFileToBuffer> close IOException "

    invoke-static {v1, v2, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v2

    :goto_1
    :try_start_3
    sget-object v1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v3, "<readFileToBuffer> Exception "

    invoke-static {v1, v3, v0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "<readFileToBuffer> close IOException "

    invoke-static {v0, v1, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object v2

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    sget-object v1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v2, "<readFileToBuffer> close IOException "

    invoke-static {v1, v2, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw v0
.end method

.method public static writeBufferToFile(Ljava/lang/String;[B)Z
    .locals 3

    const-string v0, ">>>>Utils-writeBufferToFile"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "<writeBufferToFile> buffer is null"

    invoke-static {p0, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return v0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object p1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "<writeBufferToFile> createNewFile error"

    invoke-static {p1, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return v0

    :cond_4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "<writeBufferToFile> close, IOException"

    invoke-static {v0, v1, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return p0

    :catchall_0
    move-exception p1

    move-object p0, v2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    :try_start_3
    sget-object v1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v2, "<writeBufferToFile> IOException"

    invoke-static {v1, v2, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_5

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    sget-object p1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "<writeBufferToFile> close, IOException"

    invoke-static {p1, v1, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return v0

    :goto_3
    if-eqz p0, :cond_6

    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "<writeBufferToFile> close, IOException"

    invoke-static {v0, v1, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1
.end method

.method public static writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string p1, "<writeStringToFile> input string is null, return!!!"

    invoke-static {p0, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p1, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v0, "<writeStringToFile> createNewFile error"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    sget-object v0, Lcom/mediatek/accessor/util/Utils;->TAG:Ljava/lang/String;

    const-string v1, "<writeStringToFile> Exception "

    invoke-static {v0, v1, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    :cond_4
    throw p1
.end method
