.class Lcom/baidu/location/c/q$a;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/baidu/location/c/q;

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/baidu/location/c/q;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/q;Lcom/baidu/location/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/q$a;->b:Lcom/baidu/location/c/q;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/c/q$a;->h:Lcom/baidu/location/c/q;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/c/q$a;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/c/q$a;->f:Z

    iput-boolean p1, p0, Lcom/baidu/location/c/q$a;->g:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/baidu/location/c/q$a;->c7:Ljava/util/List;

    iput p1, p0, Lcom/baidu/location/c/q$a;->c:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/baidu/location/c/q$a;->d:J

    return-void
.end method

.method private a()V
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/location/c/q$a;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/q$a;->h:Lcom/baidu/location/c/q;

    invoke-static {v0}, Lcom/baidu/location/c/q;->a(Lcom/baidu/location/c/q;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/q$a;->e:Ljava/lang/String;

    iget-wide v0, p0, Lcom/baidu/location/c/q$a;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/c/q$a;->c:I

    iput-wide v2, p0, Lcom/baidu/location/c/q$a;->d:J

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/q$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/c/q$a;->c:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/q$a;->f:Z

    invoke-virtual {p0}, Lcom/baidu/location/c/q$a;->ao()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/q$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/q$a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/q$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/q$a;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/location/c/q$a;)Lcom/baidu/location/c/q;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/q$a;->h:Lcom/baidu/location/c/q;

    return-object p0
.end method


# virtual methods
.method public au()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/c/q$a;->c7:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/c/q$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "qt"

    const-string v3, "ofbh"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/c/q$a;->c7:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "req"

    iget-object v3, p0, Lcom/baidu/location/c/q$a;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/c/d;->ak:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/q$a;->c5:Ljava/lang/String;

    return-void
.end method

.method public int(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/q$a;->g:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/c/q$a;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/c/q$a;->c6:Lorg/apache/http/HttpEntity;

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "error"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0xa1

    if-ne p1, v2, :cond_0

    iput-boolean v1, p0, Lcom/baidu/location/c/q$a;->g:Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-boolean v0, p0, Lcom/baidu/location/c/q$a;->f:Z

    iget-boolean p1, p0, Lcom/baidu/location/c/q$a;->g:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/baidu/location/c/q$a;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/baidu/location/c/q$a;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/q$a;->d:J

    :cond_1
    new-instance p1, Lcom/baidu/location/c/r;

    invoke-direct {p1, p0}, Lcom/baidu/location/c/r;-><init>(Lcom/baidu/location/c/q$a;)V

    invoke-virtual {p1}, Lcom/baidu/location/c/r;->start()V

    return-void
.end method
