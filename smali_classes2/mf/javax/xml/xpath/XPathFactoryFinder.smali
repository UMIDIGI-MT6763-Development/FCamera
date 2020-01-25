.class Lmf/javax/xml/xpath/XPathFactoryFinder;
.super Ljava/lang/Object;
.source "XPathFactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/xpath/XPathFactoryFinder$SingleIterator;
    }
.end annotation


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/Class;

.field private static final SERVICE_ID:Ljava/lang/String;

.field private static cacheProps:Ljava/util/Properties;

.field private static debug:Z

.field private static volatile firstTime:Z

.field private static ss:Lmf/javax/xml/xpath/SecuritySupport;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport;

    invoke-direct {v0}, Lmf/javax/xml/xpath/SecuritySupport;-><init>()V

    sput-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    const/4 v0, 0x0

    sput-boolean v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    const-string v3, "jaxp.debug"

    invoke-virtual {v2, v3}, Lmf/javax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sput-boolean v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    :goto_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    sput-boolean v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    const-class v0, Lmf/javax/xml/xpath/XPathFactory;

    sput-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-boolean p1, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugDisplayClassLoader()V

    :cond_0
    return-void
.end method

.method private _newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_CLASS:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Looking up system property \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2, v0}, Lmf/javax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The value is \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_0
    const-string v2, "The property is undefined."

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to look up system property \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    const-string v3, "java.home"

    invoke-virtual {v2, v3}, Lmf/javax/xml/xpath/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lib"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "jaxp.properties"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    sget-boolean v3, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v3, :cond_3

    sget-object v3, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget-boolean v4, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->firstTime:Z

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2, v4}, Lmf/javax/xml/xpath/SecuritySupport;->doesFileExist(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Read properties file "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    sget-object v5, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v5, v4}, Lmf/javax/xml/xpath/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_3
    :goto_1
    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->cacheProps:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in $java.home/jaxp.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0, v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_4

    return-object v0

    :catch_1
    move-exception v0

    sget-boolean v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    invoke-direct {p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createServiceFileIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v0, "http://java.sun.com/jaxp/xpath/dom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "attempting to use the platform default W3C DOM XPath lib"

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const-string p1, "com.sun.org.apache.xpath.internal.jaxp.XPathFactoryImpl"

    invoke-virtual {p0, p1, v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "all things were tried, but none was found. bailing out."

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "looking into "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v4, v2}, Lmf/javax/xml/xpath/SecuritySupport;->getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lmf/javax/xml/xpath/XPathFactoryFinder;->loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v2, :cond_5

    return-object v2

    :catch_2
    move-exception v3

    sget-boolean v4, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to read "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$0()Lmf/javax/xml/xpath/SecuritySupport;
    .locals 1

    sget-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method private createClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    sget-boolean v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createServiceFileIterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    new-instance v0, Lmf/javax/xml/xpath/XPathFactoryFinder$1;

    invoke-direct {v0, p0}, Lmf/javax/xml/xpath/XPathFactoryFinder$1;-><init>(Lmf/javax/xml/xpath/XPathFactoryFinder;)V

    return-object v0

    :cond_0
    :try_start_0
    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lmf/javax/xml/xpath/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file was found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lmf/javax/xml/xpath/XPathFactoryFinder$2;

    invoke-direct {v1, p0, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder$2;-><init>(Lmf/javax/xml/xpath/XPathFactoryFinder;Ljava/util/Enumeration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to enumerate resources "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lmf/javax/xml/xpath/XPathFactoryFinder;->SERVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private debugDisplayClassLoader()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    sget-object v1, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v1}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using thread context class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    iget-object v0, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using system class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using class loader ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/javax/xml/xpath/XPathFactoryFinder;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

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

.method private loadFromProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "found "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is not in the property file"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private loadFromService(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Reading "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :catch_0
    :cond_0
    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    const-string p2, "#"

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p3, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :pswitch_0
    const-string p3, ""

    :goto_1
    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmf/javax/xml/xpath/XPathFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "isObjectModelSupported"

    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_0

    move-object p2, p3

    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    return-object p2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    const-string v0, "newXPathFactoryNoServiceLoader"

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

.method private static which(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static which(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".class"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    sget-object v0, Lmf/javax/xml/xpath/XPathFactoryFinder;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v0, p1, p0}, Lmf/javax/xml/xpath/SecuritySupport;->getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method createInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object p1

    return-object p1
.end method

.method createInstance(Ljava/lang/String;Z)Lmf/javax/xml/xpath/XPathFactory;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createInstance("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "failed to getClass("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loaded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->which(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    if-nez p2, :cond_1

    :try_start_0
    invoke-static {v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->newInstanceNoServiceLoader(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/javax/xml/xpath/XPathFactory;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/javax/xml/xpath/XPathFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "could not instantiate "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean p2, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_2
    return-object v1

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "could not instantiate "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean p2, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_3
    return-object v1

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "could not instantiate "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    sget-boolean p2, Lmf/javax/xml/xpath/XPathFactoryFinder;->debug:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_4
    return-object v1

    :cond_5
    :goto_4
    return-object p1
.end method

.method public newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 3

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->_newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "factory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to find a factory for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->debugPrintln(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
