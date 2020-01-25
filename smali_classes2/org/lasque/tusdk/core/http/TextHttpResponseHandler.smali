.class public abstract Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    const-string p0, "\ufeff"

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "Encoding response into string failed: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public abstract onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(ILjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public onSuccess(ILjava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;->onSuccess(ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method
