.class Lmf/javax/xml/xpath/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method doesFileExist(Ljava/io/File;)Z
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$8;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$8;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$1;

    invoke-direct {v0, p0}, Lmf/javax/xml/xpath/SecuritySupport$1;-><init>(Lmf/javax/xml/xpath/SecuritySupport;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$3;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$3;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/io/File;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1
.end method

.method getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$7;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/xpath/SecuritySupport$7;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method getResourceAsURL(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$5;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/xpath/SecuritySupport$5;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    return-object p1
.end method

.method getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$6;

    invoke-direct {v0, p0, p1, p2}, Lmf/javax/xml/xpath/SecuritySupport$6;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$2;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$2;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getURLInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport$4;

    invoke-direct {v0, p0, p1}, Lmf/javax/xml/xpath/SecuritySupport$4;-><init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method
