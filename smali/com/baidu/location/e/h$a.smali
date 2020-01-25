.class Lcom/baidu/location/e/h$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/location/e/h;


# direct methods
.method public constructor <init>(Lcom/baidu/location/e/h;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/h$a;->c:Lcom/baidu/location/e/h;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/h$a;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/h$a;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/h$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/e/h$a;->ao()V

    return-void
.end method

.method public au()V
    .locals 4

    const-string v0, "http://loc.map.baidu.com/cc.php"

    iput-object v0, p0, Lcom/baidu/location/e/h$a;->c5:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/e/h$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/e/h$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/e/h$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "q"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public int(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/h$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/e/h$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "prod"

    sget-object v1, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/baidu/location/e/h$a;->c:Lcom/baidu/location/e/h;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/e/h;->if(Lcom/baidu/location/e/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/baidu/location/e/h$a;->c7:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/h$a;->c7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
