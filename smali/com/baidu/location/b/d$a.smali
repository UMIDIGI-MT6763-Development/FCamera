.class Lcom/baidu/location/b/d$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/location/b/d;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/b/d$a;->c:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/d$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/d$a;->c:Z

    invoke-virtual {p0}, Lcom/baidu/location/b/d$a;->as()V

    return-void
.end method

.method public au()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->for(Lcom/baidu/location/b/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns.map.baidu.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v2}, Lcom/baidu/location/b/d;->do(Lcom/baidu/location/b/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cQ()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    const-string v1, "dns.map.baidu.com"

    :goto_0
    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->int(Lcom/baidu/location/b/d;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    const-string v1, "180.97.33.196"

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    const-string v1, "111.206.37.190"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    const-string v1, "111.13.100.247"

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v1}, Lcom/baidu/location/b/d;->for(Lcom/baidu/location/b/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":80/remotedns?pid=lbs-geolocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/d$a;->c5:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v2}, Lcom/baidu/location/b/d;->if(Lcom/baidu/location/b/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->int(Lcom/baidu/location/b/d;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "net.dns1"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    :try_start_1
    const-string v2, "loc.map.baidu.com"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v2, v1}, Lcom/baidu/location/b/d;->do(Lcom/baidu/location/b/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/location/b/d;->if(Lcom/baidu/location/b/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/b/d;->do(Lcom/baidu/location/b/d;J)J

    iget-object v0, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->int(Lcom/baidu/location/b/d;)V

    :cond_1
    return-void
.end method

.method public int(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/b/d$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/b/d$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "loc.map.baidu.com"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, "loc.map.baidu.com"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v3, "dns.map.baidu.com"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "dns.map.baidu.com"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "ip"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {p1, v4}, Lcom/baidu/location/b/d;->int(Lcom/baidu/location/b/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {p1, v2}, Lcom/baidu/location/b/d;->for(Lcom/baidu/location/b/d;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string p1, "switch"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    const-string v2, "switch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/baidu/location/b/d;->if(Lcom/baidu/location/b/d;I)I

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/b/d$a;->b:Lcom/baidu/location/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/baidu/location/b/d;->if(Lcom/baidu/location/b/d;J)J

    invoke-virtual {p0}, Lcom/baidu/location/b/d$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    iput-boolean v0, p0, Lcom/baidu/location/b/d$a;->c:Z

    return-void
.end method
