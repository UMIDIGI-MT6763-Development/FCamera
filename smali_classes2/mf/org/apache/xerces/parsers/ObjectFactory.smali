.class final Lmf/org/apache/xerces/parsers/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"

.field private static fLastModified:J

.field private static fXercesProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    const-wide/16 v0, -0x1

    sput-wide v0, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
        }
    .end annotation

    sget-boolean v0, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "debug is on"

    invoke-static {v0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    sget-boolean v3, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found system property, value="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2, v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const/4 v2, 0x0

    if-nez p1, :cond_a

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    :try_start_1
    const-string v6, "java.home"

    invoke-static {v6}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "lib"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "xerces.properties"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v6}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getFileExists(Ljava/io/File;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-object v6, v2

    :catch_2
    sput-wide v4, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    sput-object v2, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    move v7, v3

    :goto_0
    const-class v8, Lmf/org/apache/xerces/parsers/ObjectFactory;

    monitor-enter v8

    :try_start_3
    sget-wide v9, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_4

    if-eqz v7, :cond_3

    sget-wide v9, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    invoke-static {v6}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v11

    sput-wide v11, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_5

    sput-wide v4, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    sput-object v2, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    invoke-static {v6}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getLastModified(Ljava/io/File;)J

    move-result-wide v9

    sput-wide v9, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J

    move v3, v1

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-static {v6}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v6, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_7

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-object v3, v2

    :catch_4
    :try_start_6
    sput-object v2, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    sput-wide v4, Lmf/org/apache/xerces/parsers/ObjectFactory;->fLastModified:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_7

    goto :goto_3

    :catch_5
    :cond_7
    :goto_4
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sget-object v3, Lmf/org/apache/xerces/parsers/ObjectFactory;->fXercesProperties:Ljava/util/Properties;

    if-eqz v3, :cond_8

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v2

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_9

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_6
    :cond_9
    :try_start_9
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :cond_a
    :try_start_a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v3, :cond_b

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    :cond_b
    move-object v3, v4

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_6

    :catchall_4
    move-exception p0

    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_c

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    :cond_c
    throw p0

    :catch_9
    move-object v3, v2

    :catch_a
    if-eqz v3, :cond_d

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    :catch_b
    :cond_d
    move-object v3, v2

    :goto_7
    if-eqz v3, :cond_f

    sget-boolean p0, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz p0, :cond_e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "found in "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_e
    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    return-object p1

    :cond_10
    if-eqz p2, :cond_12

    sget-boolean p0, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "using fallback, value="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_11
    invoke-static {p2, v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p1, Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Provider for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be found"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XERCES: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static findClassLoader()Ljava/lang/ClassLoader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-ne v0, v2, :cond_2

    const-class v0, Lmf/org/apache/xerces/parsers/ObjectFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v1

    :goto_1
    if-ne v3, v0, :cond_0

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    return-object v0

    :cond_3
    invoke-static {v2}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    const-class v2, Lmf/org/apache/xerces/parsers/ObjectFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-static {v2, p0}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v2

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    sget-boolean v3, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found jar resource="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using ClassLoader: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_2
    const/16 p0, 0x50

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    if-eqz p0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found in resource, value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    throw p0

    :catch_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v2
.end method

.method static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz p2, :cond_5

    const-class p2, Lmf/org/apache/xerces/parsers/ObjectFactory;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-eq p1, p2, :cond_4

    invoke-virtual {p2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    throw v0

    :cond_5
    throw v0
.end method

.method private static isDebugEnabled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "xerces.debug"

    invoke-static {v1}, Lmf/org/apache/xerces/parsers/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    sget-boolean v1, Lmf/org/apache/xerces/parsers/ObjectFactory;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "created new instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " using ClassLoader: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be instantiated: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
