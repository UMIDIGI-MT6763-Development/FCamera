.class public Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return p0
.end method


# virtual methods
.method public isUseRFC5179CompatibilityMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return v0
.end method

.method public onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
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

    const-string p1, "onFailure(int, List<HttpHeader>, String, Throwable) was not overriden, but callback was received: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    const-string p1, "onFailure(int, List<HttpHeader>, Throwable, JSONArray) was not overriden, but callback was received: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string p1, "onFailure(int, List<HttpHeader>, Throwable, JSONObject) was not overriden, but callback was received: %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V
    .locals 7
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

    if-eqz p3, :cond_1

    new-instance v6, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$2;-><init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;[BILjava/util/List;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const-string p3, "response body is null, calling onFailure(Throwable, JSONObject)"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x0

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p4, p3}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method public onSuccess(ILjava/util/List;Ljava/lang/String;)V
    .locals 0
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

    const-string p1, "onSuccess(int, List<HttpHeader>, String) was not overriden, but callback was received"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    const-string p1, "onSuccess(int, List<HttpHeader>, JSONArray) was not overriden, but callback was received"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string p1, "onSuccess(int, List<HttpHeader>, JSONObject) was not overriden, but callback was received"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(ILjava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler$1;-><init>(Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;[BILjava/util/List;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->onSuccess(ILjava/util/List;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public setUseRFC5179CompatibilityMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/JsonHttpResponseHandler;->a:Z

    return-void
.end method
