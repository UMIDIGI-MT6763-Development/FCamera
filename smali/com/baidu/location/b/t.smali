.class Lcom/baidu/location/b/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/m;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/b/m;->c5:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    invoke-virtual {v0}, Lcom/baidu/location/b/m;->au()V

    iget-object v0, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    iget v0, v0, Lcom/baidu/location/b/m;->dg:I

    iget-object v1, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    invoke-static {v1}, Lcom/baidu/location/b/m;->if(Lcom/baidu/location/b/m;)V

    sget v1, Lcom/baidu/location/b/m;->c8:I

    sget v2, Lcom/baidu/location/b/g;->byte:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    move-object v2, v3

    move v1, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    move v1, v5

    :goto_0
    if-lez v0, :cond_5

    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    iget-object v7, v7, Lcom/baidu/location/b/m;->c5:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v7, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    iget-object v7, v7, Lcom/baidu/location/b/m;->db:[B

    invoke-direct {v2, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v7, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Accept-Charset"

    const-string v8, "UTF-8;"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.connection.timeout"

    sget v9, Lcom/baidu/location/b/g;->Q:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v8, "http.socket.timeout"

    sget v9, Lcom/baidu/location/b/g;->Q:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    if-eqz v1, :cond_1

    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-static {}, Lcom/baidu/location/b/m;->al()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/baidu/location/b/m;->ar()I

    move-result v9

    const-string v10, "http"

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    const-string v9, "http.route.default-proxy"

    invoke-interface {v8, v9, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    iput-object v2, v7, Lcom/baidu/location/b/m;->c6:Lorg/apache/http/HttpEntity;

    iget-object v2, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    invoke-virtual {v2, v4}, Lcom/baidu/location/b/m;->int(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v6, v2

    :catch_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_4
    sget-object v2, Lcom/baidu/location/b/g;->m:Ljava/lang/String;

    const-string v7, "NetworkCommunicationException!"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v2, v6

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_3
    if-gtz v0, :cond_6

    sget v0, Lcom/baidu/location/b/m;->de:I

    add-int/2addr v0, v4

    sput v0, Lcom/baidu/location/b/m;->de:I

    iget-object v0, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    iput-object v3, v0, Lcom/baidu/location/b/m;->c6:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v5}, Lcom/baidu/location/b/m;->int(Z)V

    goto :goto_4

    :cond_6
    sput v5, Lcom/baidu/location/b/m;->de:I

    :goto_4
    iget-object v0, p0, Lcom/baidu/location/b/t;->a:Lcom/baidu/location/b/m;

    iput-object v3, v0, Lcom/baidu/location/b/m;->db:[B

    invoke-static {v0, v5}, Lcom/baidu/location/b/m;->if(Lcom/baidu/location/b/m;Z)Z

    return-void
.end method