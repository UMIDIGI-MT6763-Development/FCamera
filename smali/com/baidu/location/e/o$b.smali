.class Lcom/baidu/location/e/o$b;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field b:Z

.field c:I

.field d:I

.field final synthetic e:Lcom/baidu/location/e/o;

.field private f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/baidu/location/e/o;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/o$b;->e:Lcom/baidu/location/e/o;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/e/o$b;->b:Z

    iput p1, p0, Lcom/baidu/location/e/o$b;->c:I

    iput p1, p0, Lcom/baidu/location/e/o$b;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/o$b;->c7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-boolean v0, p0, Lcom/baidu/location/e/o$b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/baidu/location/e/o$b;->de:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/location/e/o$b;->d:I

    sget v1, Lcom/baidu/location/e/o$b;->de:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/location/e/o$b;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/location/e/o$b;->d:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/e/o$b;->d:I

    iput-boolean v2, p0, Lcom/baidu/location/e/o$b;->b:Z

    iput v0, p0, Lcom/baidu/location/e/o$b;->c:I

    iget-object v1, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    :cond_3
    iput v0, p0, Lcom/baidu/location/e/o$b;->c:I

    move v1, v0

    :cond_4
    iget v4, p0, Lcom/baidu/location/e/o$b;->c:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    invoke-static {}, Lcom/baidu/location/e/o;->cl()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_6

    iget v6, p0, Lcom/baidu/location/e/o$b;->c:I

    if-eq v6, v2, :cond_6

    iput v5, p0, Lcom/baidu/location/e/o$b;->c:I

    :try_start_0
    invoke-static {}, Lcom/baidu/location/e/k;->b7()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v3

    goto :goto_1

    :cond_6
    iput v2, p0, Lcom/baidu/location/e/o$b;->c:I

    :goto_1
    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Lcom/baidu/location/b/g;->Y:I

    if-lt v1, v4, :cond_4

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/baidu/location/e/o$b;->ao()V

    return-void

    :cond_a
    :goto_3
    iput-object v3, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/baidu/location/e/o$b;->b:Z

    return-void
.end method

.method public au()V
    .locals 6

    invoke-static {}, Lcom/baidu/location/b/k;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/o$b;->c5:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/e/o$b;->dg:I

    iget-object v0, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/baidu/location/e/o$b;->c:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/location/e/o$b;->c7:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cldc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/e/o$b;->c7:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cltr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/o$b;->c7:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "trtm"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public int(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/o$b;->c6:Lorg/apache/http/HttpEntity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/o$b;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/e/o$b;->c7:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/o$b;->c7:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/e/o$b;->b:Z

    return-void
.end method
