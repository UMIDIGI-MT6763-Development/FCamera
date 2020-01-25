.class public Lcom/baidu/aip/http/AipResponse;
.super Ljava/lang/Object;
.source "AipResponse.java"


# instance fields
.field private body:[B

.field private charset:Ljava/lang/String;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/aip/http/AipResponse;->status:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/baidu/aip/http/AipResponse;->charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/http/AipResponse;->body:[B

    return-object v0
.end method

.method public getBodyStr()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/aip/http/AipResponse;->body:[B

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/aip/http/AipResponse;->charset:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/aip/http/AipResponse;->body:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/http/AipResponse;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/aip/http/AipResponse;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/aip/http/AipResponse;->status:I

    return v0
.end method

.method public setBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/http/AipResponse;->body:[B

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/http/AipResponse;->charset:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/baidu/aip/http/AipResponse;->header:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/aip/http/AipResponse;->header:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/aip/http/AipResponse;->status:I

    return-void
.end method
