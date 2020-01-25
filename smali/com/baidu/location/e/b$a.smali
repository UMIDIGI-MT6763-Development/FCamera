.class Lcom/baidu/location/e/b$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/location/e/b;


# direct methods
.method public constructor <init>(Lcom/baidu/location/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/b$a;->d:Lcom/baidu/location/e/b;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/b$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/e/b$a;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/b$a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/e/b$a;->ao()V

    return-void
.end method

.method public au()V
    .locals 7

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/b$a;->c5:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/b/d;->U()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->S()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/baidu/location/e/b$a;->c8:I

    sget v2, Lcom/baidu/location/b/g;->for:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/baidu/location/e/b$a;->c8:I

    sget v2, Lcom/baidu/location/b/g;->o:I

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sdk.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/e/b$a;->c5:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/e/b$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/e/b$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/e/b$a;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/baidu/location/e/o;->cl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/e/b$a;->b:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "up"

    iget-object v3, p0, Lcom/baidu/location/e/b$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ki=%s&sn=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/location/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/location/b/j;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ext"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "trtm"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public int(Z)V
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/e/b$a;->d:Lcom/baidu/location/e/b;

    iget-object v0, v0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/b$a;->d:Lcom/baidu/location/e/b;

    iget-object v0, v0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->dt()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3f

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/location/e/b$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/e/b$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/e/b;->fN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/h/j;->cQ()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/baidu/location/BDLocation;->setOperators(I)V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->cb()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->cg()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/baidu/location/BDLocation;->setDirection(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1}, Lcom/baidu/location/BDLocation;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/location/e/b$a;->d:Lcom/baidu/location/e/b;

    iget-object p1, p1, Lcom/baidu/location/e/b;->fP:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v1, "HttpStatus error"

    :goto_1
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/e/b$a;->d:Lcom/baidu/location/e/b;

    iget-object p1, p1, Lcom/baidu/location/e/b;->fP:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :cond_3
    iget-object p1, p0, Lcom/baidu/location/e/b$a;->d:Lcom/baidu/location/e/b;

    iget-object p1, p1, Lcom/baidu/location/e/b;->fP:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-string v0, "HttpStatus error"

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    iget-object p1, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/e/b$a;->c7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method
