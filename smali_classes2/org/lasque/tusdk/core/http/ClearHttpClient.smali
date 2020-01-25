.class public Lorg/lasque/tusdk/core/http/ClearHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LOG_TAG:Ljava/lang/String; = "ClearHttpClient"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Z

.field private final h:Lorg/lasque/tusdk/core/http/HttpManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x1bb

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->c:I

    const/16 v0, 0x2710

    iput v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->d:I

    iput v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->g:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->b:Ljava/util/Map;

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/http/HttpManager;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->getMaxConnections()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->setMaxConnections(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->setConnectTimeout(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->getResponseTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->setResponseTimeout(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->setSocketBufferSize(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->setDefaultMaxRetries(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->setDefaultRetrySleepTimemillis(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->setHttpPort(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/http/HttpManager;->setHttpsPort(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    new-instance p2, Lorg/lasque/tusdk/core/http/ClearHttpClient$1;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/http/ClearHttpClient$1;-><init>(Lorg/lasque/tusdk/core/http/ClearHttpClient;)V

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/http/HttpManager;->addRequestInterceptor(Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    new-instance p2, Lorg/lasque/tusdk/core/http/ClearHttpClient$2;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/http/ClearHttpClient$2;-><init>(Lorg/lasque/tusdk/core/http/ClearHttpClient;)V

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/http/HttpManager;->addResponseInterceptor(Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/ClearHttpClient;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->b:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/HttpEntity;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/http/RequestParams;->getEntity(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0, v0, p1}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private a(Lorg/lasque/tusdk/core/http/HttpUriRequest;Lorg/lasque/tusdk/core/http/HttpEntity;)Lorg/lasque/tusdk/core/http/HttpUriRequest;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setEntity(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    :cond_0
    return-object p1
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/RequestHandle;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/RequestHandle;

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/ClearHttpClient;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public static endEntityViaReflection(Lorg/lasque/tusdk/core/http/HttpEntity;)V
    .locals 4

    instance-of v0, p0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpEntityWrapper;->consumeWrappedEntity()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "endEntityViaReflection: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;)Ljava/lang/String;
    .locals 9

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    const-string p0, "UTF-8"

    invoke-static {p1, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "getUrlWithQueryString encoding URL"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "?"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "&"

    goto :goto_1

    :cond_2
    const-string p1, "?"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [B

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    rsub-int/lit8 v4, v3, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v4, :cond_1

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    return v0

    :cond_1
    add-int/2addr v3, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    throw v1

    :cond_2
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    aget-byte p0, v2, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x1

    aget-byte v2, v2, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    const v2, 0x8b1f

    if-ne v2, p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static test()V
    .locals 3

    const-string v0, "test start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/lasque/tusdk/core/http/ClearHttpClient;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->setEnableRedirct(Z)V

    const-string v1, "http://www.tusdk.com/"

    new-instance v2, Lorg/lasque/tusdk/core/http/ClearHttpClient$4;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/http/ClearHttpClient$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->get(Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelAllRequests(Z)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/http/RequestHandle;

    invoke-virtual {v2, p1}, Lorg/lasque/tusdk/core/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Passed null Context to cancelRequests"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_1

    new-instance p1, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;

    invoke-direct {p1, p0, v0, p2}, Lorg/lasque/tusdk/core/http/ClearHttpClient$3;-><init>(Lorg/lasque/tusdk/core/http/ClearHttpClient;Ljava/util/List;Z)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Ljava/util/List;Z)V

    :goto_0
    return-void
.end method

.method public cancelRequestsByTAG(Ljava/lang/Object;Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "cancelRequestsByTAG, passed TAG is null, cannot proceed"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/http/RequestHandle;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/http/RequestHandle;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p2}, Lorg/lasque/tusdk/core/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Lorg/lasque/tusdk/core/http/RequestParams;",
            "Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;",
            ")",
            "Lorg/lasque/tusdk/core/http/RequestHandle;"
        }
    .end annotation

    new-instance v2, Lorg/lasque/tusdk/core/http/HttpGet;

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->g:Z

    invoke-static {v0, p2, p4}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/lasque/tusdk/core/http/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v2, p3}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setHeaders(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/HttpEntity;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 6

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpGet;

    invoke-static {p2}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/lasque/tusdk/core/http/HttpGet;-><init>(Ljava/net/URL;)V

    invoke-direct {p0, v0, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/HttpUriRequest;Lorg/lasque/tusdk/core/http/HttpEntity;)Lorg/lasque/tusdk/core/http/HttpUriRequest;

    move-result-object v2

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 6

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    new-instance v2, Lorg/lasque/tusdk/core/http/HttpGet;

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->g:Z

    invoke-static {v0, p2, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/lasque/tusdk/core/http/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->d:I

    return v0
.end method

.method protected getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getHttpManager()Lorg/lasque/tusdk/core/http/HttpManager;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->c:I

    return v0
.end method

.method public getResponseTimeout()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->e:I

    return v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->g:Z

    return v0
.end method

.method protected newClearHttpRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/ClearHttpRequest;
    .locals 0

    new-instance p3, Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    invoke-direct {p3, p1, p2, p4}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;-><init>(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)V

    return-object p3
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lorg/lasque/tusdk/core/http/HttpEntity;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Lorg/lasque/tusdk/core/http/HttpEntity;",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;",
            ")",
            "Lorg/lasque/tusdk/core/http/RequestHandle;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpPost;

    invoke-static {p2}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/lasque/tusdk/core/http/HttpPost;-><init>(Ljava/net/URL;)V

    invoke-direct {p0, v0, p4}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/HttpUriRequest;Lorg/lasque/tusdk/core/http/HttpEntity;)Lorg/lasque/tusdk/core/http/HttpUriRequest;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setHeaders(Ljava/util/List;)V

    :cond_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lorg/lasque/tusdk/core/http/RequestParams;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Lorg/lasque/tusdk/core/http/RequestParams;",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;",
            ")",
            "Lorg/lasque/tusdk/core/http/RequestHandle;"
        }
    .end annotation

    new-instance v2, Lorg/lasque/tusdk/core/http/HttpPost;

    invoke-static {p2}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/lasque/tusdk/core/http/HttpPost;-><init>(Ljava/net/URL;)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p4, p6}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setEntity(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v2, p3}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setHeaders(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/HttpEntity;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 6

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpPost;

    invoke-static {p2}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/lasque/tusdk/core/http/HttpPost;-><init>(Ljava/net/URL;)V

    invoke-direct {p0, v0, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/HttpUriRequest;Lorg/lasque/tusdk/core/http/HttpEntity;)Lorg/lasque/tusdk/core/http/HttpUriRequest;

    move-result-object v2

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 6

    invoke-direct {p0, p3, p4}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/HttpEntity;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public removeAllHeaders()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected sendRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 2

    if-eqz p2, :cond_8

    if-eqz p4, :cond_7

    invoke-interface {p4}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->getUseSynchronousMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->getUsePoolThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Synchronous ResponseHandler used in ClearHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Passed contentType will be ignored because HttpEntity sets content type"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0, p3}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getAllHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->setRequestHeaders(Ljava/util/List;)V

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->setRequestURL(Ljava/net/URL;)V

    invoke-virtual/range {p0 .. p5}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->newClearHttpRequest(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Ljava/lang/String;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Landroid/content/Context;)Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance p2, Lorg/lasque/tusdk/core/http/RequestHandle;

    invoke-direct {p2, p1}, Lorg/lasque/tusdk/core/http/RequestHandle;-><init>(Lorg/lasque/tusdk/core/http/ClearHttpRequest;)V

    if-eqz p5, :cond_6

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_4

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iget-object p4, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a:Ljava/util/Map;

    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/core/http/RequestHandle;

    invoke-virtual {p3}, Lorg/lasque/tusdk/core/http/RequestHandle;->shouldBeGarbageCollected()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_6
    return-object p2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ResponseHandler must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HttpUriRequest must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->d:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    iget v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->d:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/http/HttpManager;->setConnectTimeout(I)V

    return-void
.end method

.method public setEnableRedirct(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->setEnableRedirct(Z)V

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->setMaxConnections(I)V

    return-void
.end method

.method public setResponseTimeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->e:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->h:Lorg/lasque/tusdk/core/http/HttpManager;

    iget v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->e:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/http/HttpManager;->setResponseTimeout(I)V

    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->setConnectTimeout(I)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->setResponseTimeout(I)V

    return-void
.end method

.method public setUrlEncodingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient;->g:Z

    return-void
.end method
