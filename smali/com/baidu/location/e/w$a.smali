.class Lcom/baidu/location/e/w$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/location/e/w;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/w$a;->b:Lcom/baidu/location/e/w;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/w$a;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/w$a;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/w$a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/e/w$a;->ao()V

    return-void
.end method

.method public au()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/e/w$a;->dg:I

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/w$a;->c5:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/b/d;->U()Lcom/baidu/location/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/d;->S()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/baidu/location/e/w$a;->c8:I

    sget v2, Lcom/baidu/location/b/g;->for:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/baidu/location/e/w$a;->c8:I

    sget v2, Lcom/baidu/location/b/g;->o:I

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/sdk.php"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/w$a;->c5:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/w$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/e/w$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/e/w$a;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public int(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/w$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/e/w$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/e/w$a;->b:Lcom/baidu/location/e/w;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/baidu/location/e/w;->a(Lcom/baidu/location/e/w;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lcom/baidu/location/e/w$a;->b:Lcom/baidu/location/e/w;

    invoke-static {p1, v0}, Lcom/baidu/location/e/w;->a(Lcom/baidu/location/e/w;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-boolean p1, Lcom/baidu/location/b/k;->bX:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/location/b/k;->bX:Z

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->long()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v2

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v3

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/k;->c6()Lcom/baidu/location/h/f;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v7, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/w$a;->b:Lcom/baidu/location/e/w;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/e/w;->a(Lcom/baidu/location/e/w;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/baidu/location/e/w$a;->b:Lcom/baidu/location/e/w;

    invoke-static {v1, v0}, Lcom/baidu/location/e/w;->a(Lcom/baidu/location/e/w;Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_3

    const/4 p1, 0x0

    sput-boolean p1, Lcom/baidu/location/b/k;->bX:Z

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/baidu/location/e/w$a;->c7:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/e/w$a;->c7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method
