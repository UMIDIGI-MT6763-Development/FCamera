.class public Lorg/apache/log4j/net/ZeroConfSupport;
.super Ljava/lang/Object;
.source "ZeroConfSupport.java"


# static fields
.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$util$Hashtable:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;

.field private static jmDNS:Ljava/lang/Object;

.field private static jmDNSClass:Ljava/lang/Class;

.field private static serviceInfoClass:Ljava/lang/Class;


# instance fields
.field serviceInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->initializeJMDNS()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v1, "create"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "using JmDNS version 3 to construct serviceInfo instance"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/net/ZeroConfSupport;->buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "using JmDNS version 1.0 to construct serviceInfo instance"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/net/ZeroConfSupport;->buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private buildServiceInfoVersion1(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    const/4 p4, 0x6

    :try_start_0
    new-array v1, p4, [Ljava/lang/Class;

    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.util.Hashtable"

    invoke-static {v2}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Hashtable:Ljava/lang/Class;

    :goto_2
    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v3

    aput-object p3, p4, v4

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, p4, v5

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, p4, v6

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, p4, v7

    aput-object v0, p4, v8

    invoke-virtual {v1, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "created serviceinfo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to construct ServiceInfo instance"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "Unable to construct ServiceInfo instance"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception p1

    const-string p2, "Unable to get ServiceInfo constructor"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception p1

    const-string p2, "Unable to construct ServiceInfo instance"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private buildServiceInfoVersion3(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    if-nez v3, :cond_2

    const-string v3, "java.util.Map"

    invoke-static {v3}, Lorg/apache/log4j/net/ZeroConfSupport;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_2

    :cond_2
    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->class$java$util$Map:Ljava/lang/Class;

    :goto_2
    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    const-string v10, "create"

    invoke-virtual {v3, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p3, v1, v5

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v1, v6

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v1, v7

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object p1, v1, v8

    aput-object p4, v1, v9

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "created serviceinfo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to invoke create method"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "Unable to find create method"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception p1

    const-string p2, "Unable to invoke create method"

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private static createJmDNSVersion1()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createJmDNSVersion3()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Unable to call constructor"

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Unable to access constructor"

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Unable to instantiate jmdns class"

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public static getJMDNSInstance()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    return-object v0
.end method

.method private static initializeJMDNS()Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "javax.jmdns.JmDNS"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v0, "javax.jmdns.ServiceInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "JmDNS or serviceInfo class not found"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :catch_1
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->createJmDNSVersion3()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/log4j/net/ZeroConfSupport;->createJmDNSVersion1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public advertise()V
    .locals 6

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v1, "registerService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "registered serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "No registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Unable to invoke registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unadvertise()V
    .locals 6

    :try_start_0
    sget-object v0, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNSClass:Ljava/lang/Class;

    const-string v1, "unregisterService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfoClass:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/net/ZeroConfSupport;->jmDNS:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unregistered serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/ZeroConfSupport;->serviceInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to invoke unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "No unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Unable to invoke unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
