.class public Lorg/lasque/tusdk/core/utils/FileHelper;
.super Ljava/lang/Object;


# static fields
.field public static final MIN_AVAILABLE_SPACE_BYTES:J = 0x3200000L

.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/lasque/tusdk/core/utils/FileHelper;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/StatFs;)J
    .locals 4

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static b(Landroid/os/StatFs;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    long-to-int p0, p0

    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v0

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    move-object v3, v4

    :goto_1
    :try_start_3
    const-string v5, "copyFile: %s | %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    aput-object p1, v6, v1

    invoke-static {v0, v5, v6}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    move v1, v2

    :goto_2
    return v1

    :catchall_2
    move-exception p0

    :goto_3
    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_2
    return-void
.end method

.method public static deleteSubs(Ljava/io/File;)V
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static getAppCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .locals 0

    invoke-static {p0, p2}, Lorg/lasque/tusdk/core/utils/FileHelper;->getAppCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    return-object p2

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getAppCacheDir(Landroid/content/Context;Z)Ljava/io/File;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/FileHelper;->mountedExternalStorage()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "create externalCacheDir failed"

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getAvailableStore(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge p0, v1, :cond_0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->a(Landroid/os/StatFs;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->b(Landroid/os/StatFs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getBytesFromFile(Ljava/io/File;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesFromFile(Ljava/io/File;I)[B
    .locals 6

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    int-to-long v2, p1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v3, p1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, v1

    :goto_0
    :try_start_2
    const-string v4, "getBytesFromFile(File file, int length): %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {p1, v4, v5}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-object v1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static getBytesFromObject(Ljava/io/Serializable;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/FileHelper;->mountedExternalStorage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalStorages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const-string v0, "storage"

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "getVolumePaths"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->reflectMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getFileInputStream: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getObjectFromBytes([B)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAvailableExternal(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/FileHelper;->mountedExternalStorage()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x3200000

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getAvailableStore(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static md5sum(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5sum(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1, v2, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v3, "md5sum"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-object v0

    :goto_1
    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw v0
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->md5sum(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :try_start_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "error"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    return-object v0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static md5sum([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/FileHelper;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "md5sum"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static mountedExternalStorage()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->readFile(Ljava/io/File;J)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFile(Ljava/io/File;J)[B
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-eqz v0, :cond_2

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, v4, v5}, Lorg/lasque/tusdk/core/utils/FileHelper;->readFile(Ljava/io/File;JJ)[B

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p1, "readFile: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static readFile(Ljava/io/File;JJ)[B
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_0

    cmp-long v4, p3, p1

    if-gtz v4, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-ltz v6, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    cmp-long v0, p3, v4

    if-lez v0, :cond_3

    :cond_2
    move-wide p3, v4

    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5, p1, p2}, Ljava/io/InputStream;->skip(J)J

    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    int-to-long v6, v1

    add-long/2addr p1, v6

    cmp-long v6, p3, p1

    if-ltz v6, :cond_4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_4
    sub-long/2addr p1, p3

    long-to-int p1, p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v5}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v1, v5

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p1

    :goto_1
    :try_start_2
    const-string p2, "readFile: %s"

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p0, p3, v3

    :goto_2
    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_3
    const-string p2, "readFile: %s"

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p0, p3, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_4
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :goto_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_6
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0

    :cond_6
    :goto_7
    const-string p1, "readFile: %s"

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static safeClose(Ljava/io/Closeable;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "safeClose close InputStream"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static saveFile(Ljava/io/File;[B)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    :goto_0
    :try_start_2
    const-string p1, "File not found [saveFile(File file, byte[] b)]: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :goto_1
    return-object p0

    :goto_2
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0
.end method

.method public static saveFile(Ljava/lang/String;[B)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->saveFile(Ljava/io/File;[B)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static saveFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :goto_1
    :try_start_2
    const-string v4, "Error accessing file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :goto_2
    const-string v4, "File not found: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    :goto_3
    invoke-static {v1, v4, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    :goto_4
    return v0

    :catchall_1
    move-exception p0

    :goto_5
    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw p0

    :cond_3
    :goto_6
    return v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Lorg/lasque/tusdk/core/utils/FileHelper;->a:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/lasque/tusdk/core/utils/FileHelper;->a:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
