.class Lmf/javax/xml/transform/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
    }
.end annotation


# static fields
.field static cacheProps:Ljava/util/Properties; = null

.field private static debug:Z = false

.field static volatile firstTime:Z

.field static ss:Lmf/javax/xml/transform/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    const/4 v0, 0x1

    sput-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    new-instance v1, Lmf/javax/xml/transform/SecuritySupport;

    invoke-direct {v1}, Lmf/javax/xml/transform/SecuritySupport;-><init>()V

    sput-object v1, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const-string v3, "jaxp.debug"

    invoke-virtual {v2, v3}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sput-boolean v1, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    :goto_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dPrint(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAXP: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "find factoryId ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v3, p0}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found system property, value="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    invoke-static {v3, v1, v2, v0, v2}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    sget-boolean v4, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :try_start_1
    sget-boolean v3, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    if-eqz v3, :cond_2

    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-boolean v4, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    const-string v6, "java.home"

    invoke-virtual {v5, v6}, Lmf/javax/xml/transform/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "jaxp.properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-boolean v0, Lmf/javax/xml/transform/FactoryFinder;->firstTime:Z

    sget-object v4, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v4, v5}, Lmf/javax/xml/transform/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Read properties file "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    sget-object v4, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v6, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v6, v5}, Lmf/javax/xml/transform/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4

    :cond_2
    :goto_0
    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found in $java.home/jaxp.properties, value="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    invoke-static {v3, v1, v2, v0, v2}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception v3

    sget-boolean v4, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-static {p0}, Lmf/javax/xml/transform/FactoryFinder;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    if-eqz p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "loaded from fallback value: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v0, v2}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p1, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Provider for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v0}, Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v3, v0, p0}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    const-class v0, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v3, v0, p0}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    const-class v0, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v3, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {v3, v0, p0}, Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-nez v3, :cond_2

    return-object v5

    :cond_2
    sget-boolean v6, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "found jar resource="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using ClassLoader: "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_4

    const-string p0, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v5, "found in resource, value="

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V

    invoke-static {v3, v0, v1, v4, v2}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v5

    :catch_1
    return-object v5
.end method

.method private static getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p3, :cond_0

    :try_start_0
    const-class p1, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lmf/javax/xml/transform/FactoryFinder;->ss:Lmf/javax/xml/transform/SecuritySupport;

    invoke-virtual {p1}, Lmf/javax/xml/transform/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-direct {p1}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw p1

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_3

    const-class p1, Lmf/javax/xml/transform/FactoryFinder;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    throw p1
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lmf/javax/xml/transform/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;ZZZ)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmf/javax/xml/transform/FactoryFinder;->getProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p4, :cond_0

    invoke-static {p2}, Lmf/javax/xml/transform/FactoryFinder;->newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    :cond_1
    sget-boolean p4, Lmf/javax/xml/transform/FactoryFinder;->debug:Z

    if-eqz p4, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "created new instance of "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " using ClassLoader: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/transform/FactoryFinder;->dPrint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Provider "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be instantiated: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Provider "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lmf/javax/xml/transform/FactoryFinder$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private static newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "newTransformerFactoryNoServiceLoader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :catch_1
    return-object v1
.end method
