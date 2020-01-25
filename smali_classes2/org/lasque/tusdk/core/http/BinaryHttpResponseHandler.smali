.class public abstract Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>()V

    const-string v0, "application/octet-stream"

    const-string v1, "image/jpeg"

    const-string v2, "image/png"

    const-string v3, "image/gif"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>()V

    const-string v0, "application/octet-stream"

    const-string v1, "image/jpeg"

    const-string v2, "image/png"

    const-string v3, "image/gif"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Constructor passed allowedContentTypes was null !"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    const-string p2, "application/octet-stream"

    const-string v0, "image/jpeg"

    const-string v1, "image/png"

    const-string v2, "image/gif"

    filled-new-array {p2, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Constructor passed allowedContentTypes was null !"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V
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
.end method

.method public abstract onSuccess(ILjava/util/List;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public final sendResponseMessage(Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 12

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    :try_start_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    move v7, v3

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v10, "Given pattern is not valid (%s): %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v2

    aput-object v9, v11, v3

    invoke-static {v10, v11}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/lasque/tusdk/core/http/HttpResponseException;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") not allowed!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lorg/lasque/tusdk/core/http/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v1, v4}, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendResponseMessage(Lorg/lasque/tusdk/core/http/HttpResponse;)V

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/lasque/tusdk/core/http/HttpResponseException;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result p1

    const-string v4, "None, or more than one, Content-Type Header found!"

    invoke-direct {v3, p1, v4}, Lorg/lasque/tusdk/core/http/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2, v1, v3}, Lorg/lasque/tusdk/core/http/BinaryHttpResponseHandler;->sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V

    return-void
.end method
