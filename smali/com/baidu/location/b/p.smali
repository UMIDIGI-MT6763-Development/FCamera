.class Lcom/baidu/location/b/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/m;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/b/m;->c5:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-virtual {v0}, Lcom/baidu/location/b/m;->au()V

    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    iget v0, v0, Lcom/baidu/location/b/m;->dg:I

    iget-object v1, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-static {v1}, Lcom/baidu/location/b/m;->if(Lcom/baidu/location/b/m;)V

    sget v1, Lcom/baidu/location/b/m;->c8:I

    sget v2, Lcom/baidu/location/b/g;->byte:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-lez v0, :cond_4

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v5, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    iget-object v5, v5, Lcom/baidu/location/b/m;->c5:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept-Charset"

    const-string v6, "UTF-8;"

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.connection.timeout"

    sget v8, Lcom/baidu/location/b/g;->Q:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v7, "http.socket.timeout"

    sget v8, Lcom/baidu/location/b/g;->Q:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    if-eqz v1, :cond_1

    new-instance v6, Lorg/apache/http/HttpHost;

    invoke-static {}, Lcom/baidu/location/b/m;->al()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/baidu/location/b/m;->ar()I

    move-result v8

    const-string v9, "http"

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.route.default-proxy"

    invoke-interface {v7, v8, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    iget-object v2, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    iput-object v5, v2, Lcom/baidu/location/b/m;->c6:Lorg/apache/http/HttpEntity;

    iget-object v2, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-virtual {v2, v3}, Lcom/baidu/location/b/m;->int(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v2, Lcom/baidu/location/b/g;->m:Ljava/lang/String;

    const-string v5, "NetworkCommunicationException!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    :goto_3
    if-gtz v0, :cond_5

    sget v0, Lcom/baidu/location/b/m;->de:I

    add-int/2addr v0, v3

    sput v0, Lcom/baidu/location/b/m;->de:I

    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/location/b/m;->c6:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v4}, Lcom/baidu/location/b/m;->int(Z)V

    goto :goto_4

    :cond_5
    sput v4, Lcom/baidu/location/b/m;->de:I

    :goto_4
    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/m;

    invoke-static {v0, v4}, Lcom/baidu/location/b/m;->if(Lcom/baidu/location/b/m;Z)Z

    return-void
.end method
