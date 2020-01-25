.class Lcom/baidu/location/e/f$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/baidu/location/e/f;


# direct methods
.method public constructor <init>(Lcom/baidu/location/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/f$a;->e:Lcom/baidu/location/e/f;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/f$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/e/f$a;->c:Z

    iput-boolean p1, p0, Lcom/baidu/location/e/f$a;->d:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/f$a;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/f$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/f$a;->d:Z

    iput-object p1, p0, Lcom/baidu/location/e/f$a;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/baidu/location/e/f$a;->c:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/baidu/location/e/f$a;->ap()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/location/e/f$a;->ao()V

    :goto_0
    return-void
.end method

.method public au()V
    .locals 5

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/f$a;->c5:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/e/f$a;->dg:I

    iget-object v0, p0, Lcom/baidu/location/e/f$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/e/f$a;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/baidu/location/e/f$a;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/e/f$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "qt"

    const-string v4, "grid"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/e/f$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "qt"

    const-string v4, "conf"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/e/f$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "req"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public int(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/f$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/baidu/location/e/f$a;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/f$a;->e:Lcom/baidu/location/e/f;

    iget-object v0, p0, Lcom/baidu/location/e/f$a;->c6:Lorg/apache/http/HttpEntity;

    invoke-static {p1, v0}, Lcom/baidu/location/e/f;->do(Lcom/baidu/location/e/f;Lorg/apache/http/HttpEntity;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/e/f$a;->e:Lcom/baidu/location/e/f;

    iget-object v0, p0, Lcom/baidu/location/e/f$a;->c6:Lorg/apache/http/HttpEntity;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/e/f$a;->e:Lcom/baidu/location/e/f;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/location/e/f;->if(Lcom/baidu/location/e/f;Lorg/apache/http/HttpEntity;)V

    :goto_1
    iget-object p1, p0, Lcom/baidu/location/e/f$a;->c7:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/location/e/f$a;->c7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/e/f$a;->d:Z

    return-void
.end method
