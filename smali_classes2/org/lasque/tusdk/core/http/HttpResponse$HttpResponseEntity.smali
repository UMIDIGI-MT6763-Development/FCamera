.class Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpResponseEntity"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/http/HttpResponse;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/http/HttpResponse;Lorg/lasque/tusdk/core/http/HttpResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;-><init>(Lorg/lasque/tusdk/core/http/HttpResponse;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->c(Lorg/lasque/tusdk/core/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Encoding"

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-static {v2}, Lorg/lasque/tusdk/core/http/HttpResponse;->c(Lorg/lasque/tusdk/core/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->a(Lorg/lasque/tusdk/core/http/HttpResponse;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->b(Lorg/lasque/tusdk/core/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;->a:Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-static {v2}, Lorg/lasque/tusdk/core/http/HttpResponse;->b(Lorg/lasque/tusdk/core/http/HttpResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method
