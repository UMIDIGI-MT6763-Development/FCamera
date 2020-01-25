.class Lcom/baidu/location/e/p$d;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/location/e/p;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/p;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/p$d;->c:Lcom/baidu/location/e/p;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/p$d;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/p$d;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/p$d;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/e/p$d;->ao()V

    return-void
.end method

.method public au()V
    .locals 6

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/p$d;->c5:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/e/p$d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/e/p$d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/e/p$d;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/e/p$d;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ext"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/p$d;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "trtm"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public int(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/p$d;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/e/p$d;->c6:Lorg/apache/http/HttpEntity;

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 p1, 0x3f

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v1, 0xa1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/p$d;->c:Lcom/baidu/location/e/p;

    invoke-static {p1}, Lcom/baidu/location/e/p;->do(Lcom/baidu/location/e/p;)Lcom/baidu/location/LocationClientOption;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/e/p$d;->c:Lcom/baidu/location/e/p;

    invoke-static {p1}, Lcom/baidu/location/e/p;->if(Lcom/baidu/location/e/p;)Lcom/baidu/location/e/p$a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/baidu/location/e/p$a;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    iget-object p1, p0, Lcom/baidu/location/e/p$d;->c7:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/p$d;->c7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
