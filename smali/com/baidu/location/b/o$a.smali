.class Lcom/baidu/location/b/o$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/location/b/o;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/baidu/location/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/o$a;->b:Lcom/baidu/location/b/o;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/o$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/b/o$a;->d:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/b/o$a;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/o$a;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/b/o$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/b/o$a;->ao()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/o$a;->d:Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/o$a;->d:Z

    return v0
.end method

.method public au()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/o$a;->c7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/b/o$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "qt"

    const-string v3, "stat"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/o$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "req"

    iget-object v3, p0, Lcom/baidu/location/b/o$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "http://loc.map.baidu.com/statloc"

    iput-object v0, p0, Lcom/baidu/location/b/o$a;->c5:Ljava/lang/String;

    return-void
.end method

.method public int(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/o$a;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/b/o$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/b/o$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/b/o$a;->b:Lcom/baidu/location/b/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/baidu/location/b/o;->if(Lcom/baidu/location/b/o;J)J

    :catch_0
    :goto_0
    return-void
.end method
