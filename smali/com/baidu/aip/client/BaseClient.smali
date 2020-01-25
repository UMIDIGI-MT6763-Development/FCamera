.class public abstract Lcom/baidu/aip/client/BaseClient;
.super Ljava/lang/Object;
.source "BaseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aip/client/BaseClient$AuthState;
    }
.end annotation


# static fields
.field protected static final LOGGER:Lorg/apache/log4j/Logger;


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected aipKey:Ljava/lang/String;

.field protected aipToken:Ljava/lang/String;

.field protected appId:Ljava/lang/String;

.field protected config:Lcom/baidu/aip/util/AipClientConfiguration;

.field protected expireDate:Ljava/util/Calendar;

.field protected isAuthorized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected state:Lcom/baidu/aip/client/BaseClient$AuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/aip/client/BaseClient;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/aip/client/BaseClient;->aipKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/aip/client/BaseClient;->aipToken:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->isAuthorized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->accessToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->expireDate:Ljava/util/Calendar;

    new-instance p1, Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-direct {p1, p0}, Lcom/baidu/aip/client/BaseClient$AuthState;-><init>(Lcom/baidu/aip/client/BaseClient;)V

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    const-string p1, "aip.log4j.conf"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/log4j/BasicConfigurator;->configure()V

    :goto_0
    return-void
.end method

.method private getExpireDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->expireDate:Ljava/util/Calendar;

    return-object v0
.end method

.method private getIsAuthorized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->isAuthorized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getIsBceKey()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->accessToken:Ljava/lang/String;

    return-void
.end method

.method private setExpireDate(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/client/BaseClient;->expireDate:Ljava/util/Calendar;

    return-void
.end method

.method private setIsAuthorized(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->isAuthorized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private setIsBceKey(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized getAccessToken(Lcom/baidu/aip/util/AipClientConfiguration;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/aip/client/BaseClient;->needAuth()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object p1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {p1}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    const-string v0, "app[%s] no need to auth"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/aip/client/BaseClient;->appId:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->aipKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/aip/client/BaseClient;->aipToken:Ljava/lang/String;

    invoke-static {v0, v3, p1}, Lcom/baidu/aip/auth/DevAuth;->oauth(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/aip/util/AipClientConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    const-string v0, "oauth get null response"

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v0, v2}, Lcom/baidu/aip/client/BaseClient$AuthState;->transfer(Z)V

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/aip/client/BaseClient;->accessToken:Ljava/lang/String;

    sget-object v0, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access_token success. current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v4}, Lcom/baidu/aip/client/BaseClient$AuthState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    iput-object v3, p0, Lcom/baidu/aip/client/BaseClient;->expireDate:Ljava/util/Calendar;

    const-string v0, "scope"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    sget-object v5, Lcom/baidu/aip/util/AipClientConst;->AI_ACCESS_RIGHT:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {p1, v1}, Lcom/baidu/aip/client/BaseClient$AuthState;->transfer(Z)V

    sget-object p1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {p1}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state after check priviledge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v1}, Lcom/baidu/aip/client/BaseClient$AuthState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {p1, v1}, Lcom/baidu/aip/client/BaseClient$AuthState;->transfer(Z)V

    sget-object p1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oauth get error, current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v1}, Lcom/baidu/aip/client/BaseClient$AuthState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected needAuth()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v2, p0, Lcom/baidu/aip/client/BaseClient;->isAuthorized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/aip/client/BaseClient;->expireDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected postOperation(Lcom/baidu/aip/http/AipRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->isBceKey:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "aipSdk"

    const-string v1, "java"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/aip/http/AipRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/aip/http/AipRequest;->getBodyStr()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/aip/http/AipRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    const-string v2, "Content-Length"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const-string v1, "Content-MD5"

    invoke-virtual {p1}, Lcom/baidu/aip/http/AipRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/aip/util/SignUtil;->md5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/aip/util/Util;->getCanonicalTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Host"

    invoke-virtual {p1}, Lcom/baidu/aip/http/AipRequest;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-bce-date"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Authorization"

    iget-object v2, p0, Lcom/baidu/aip/client/BaseClient;->aipKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/aip/client/BaseClient;->aipToken:Ljava/lang/String;

    invoke-static {p1, v2, v3, v0}, Lcom/baidu/aip/auth/CloudAuth;->sign(Lcom/baidu/aip/http/AipRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "aipSdk"

    const-string v1, "java"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/aip/http/AipRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/baidu/aip/client/BaseClient;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/aip/http/AipRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected preOperation(Lcom/baidu/aip/http/AipRequest;)V
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/aip/client/BaseClient;->needAuth()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-virtual {p0, v0}, Lcom/baidu/aip/client/BaseClient;->getAccessToken(Lcom/baidu/aip/util/AipClientConfiguration;)V

    :cond_0
    sget-object v0, Lcom/baidu/aip/http/HttpMethodName;->POST:Lcom/baidu/aip/http/HttpMethodName;

    invoke-virtual {p1, v0}, Lcom/baidu/aip/http/AipRequest;->setHttpMethod(Lcom/baidu/aip/http/HttpMethodName;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accept"

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/aip/http/AipRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-virtual {p1, v0}, Lcom/baidu/aip/http/AipRequest;->setConfig(Lcom/baidu/aip/util/AipClientConfiguration;)V

    return-void
.end method

.method protected requestServer(Lcom/baidu/aip/http/AipRequest;)Lorg/json/JSONObject;
    .locals 6

    invoke-static {p1}, Lcom/baidu/aip/http/AipHttpClient;->post(Lcom/baidu/aip/http/AipRequest;)Lcom/baidu/aip/http/AipResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/aip/http/AipResponse;->getBodyStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/aip/http/AipResponse;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v1}, Lcom/baidu/aip/client/BaseClient$AuthState;->getState()Lcom/baidu/aip/client/EAuthState;

    move-result-object v1

    sget-object v4, Lcom/baidu/aip/client/EAuthState;->STATE_POSSIBLE_CLOUD_USER:Lcom/baidu/aip/client/EAuthState;

    invoke-virtual {v1, v4}, Lcom/baidu/aip/client/EAuthState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Lcom/baidu/aip/util/AipClientConst;->IAM_ERROR_CODE:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v1, v2}, Lcom/baidu/aip/client/BaseClient$AuthState;->transfer(Z)V

    sget-object v1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state after cloud auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/aip/client/BaseClient;->state:Lcom/baidu/aip/client/BaseClient$AuthState;

    invoke-virtual {v4}, Lcom/baidu/aip/client/BaseClient$AuthState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    :cond_2
    if-nez v2, :cond_3

    sget-object p1, Lcom/baidu/aip/util/AipClientConst;->OPENAPI_NO_ACCESS_ERROR_CODE:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "No permission to access data"

    invoke-static {p1, v1}, Lcom/baidu/aip/util/Util;->getGeneralError(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_3
    return-object p1

    :catch_0
    const/4 p1, -0x1

    invoke-static {p1, v0}, Lcom/baidu/aip/util/Util;->getGeneralError(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object v1, Lcom/baidu/aip/client/BaseClient;->LOGGER:Lorg/apache/log4j/Logger;

    const-string v4, "call failed! response status: %d, data: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    sget-object p1, Lcom/baidu/aip/error/AipError;->NET_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

    invoke-virtual {p1}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public setConnectionTimeoutInMillis(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-direct {v0}, Lcom/baidu/aip/util/AipClientConfiguration;-><init>()V

    iput-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/util/AipClientConfiguration;->setConnectionTimeoutMillis(I)V

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-direct {v0}, Lcom/baidu/aip/util/AipClientConfiguration;-><init>()V

    iput-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/aip/util/AipClientConfiguration;->setProxy(Ljava/lang/String;ILjava/net/Proxy$Type;)V

    return-void
.end method

.method public setSocketProxy(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-direct {v0}, Lcom/baidu/aip/util/AipClientConfiguration;-><init>()V

    iput-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/aip/util/AipClientConfiguration;->setProxy(Ljava/lang/String;ILjava/net/Proxy$Type;)V

    return-void
.end method

.method public setSocketTimeoutInMillis(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-direct {v0}, Lcom/baidu/aip/util/AipClientConfiguration;-><init>()V

    iput-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/baidu/aip/client/BaseClient;->config:Lcom/baidu/aip/util/AipClientConfiguration;

    invoke-virtual {v0, p1}, Lcom/baidu/aip/util/AipClientConfiguration;->setSocketTimeoutMillis(I)V

    return-void
.end method
