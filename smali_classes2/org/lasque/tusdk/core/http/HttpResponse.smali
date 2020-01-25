.class public Lorg/lasque/tusdk/core/http/HttpResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;
    }
.end annotation


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private b:Ljava/io/OutputStream;

.field private c:Ljava/io/InputStream;

.field private d:Lorg/lasque/tusdk/core/http/HttpEntity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->h:J

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/http/HttpResponse;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->h:J

    return-wide v0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->f:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->h:J

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->i:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->j:Ljava/lang/String;

    new-instance v0, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/http/HttpResponse$HttpResponseEntity;-><init>(Lorg/lasque/tusdk/core/http/HttpResponse;Lorg/lasque/tusdk/core/http/HttpResponse$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->d:Lorg/lasque/tusdk/core/http/HttpEntity;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->e:Ljava/util/List;

    new-instance v5, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/http/HttpResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/http/HttpResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->c:Ljava/io/InputStream;

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpResponse;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpResponse;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->consumeContent()V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getAllHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->e:Ljava/util/List;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->h:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->d:Lorg/lasque/tusdk/core/http/HttpEntity;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/http/HttpHeader;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v2, p1}, Lorg/lasque/tusdk/core/http/HttpHeader;->equalsName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->f:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public openInputStream()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->b:Ljava/io/OutputStream;

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/HttpResponse;->a()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->c:Ljava/io/InputStream;

    return-void
.end method

.method public openOutputStream()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public setEntity(Lorg/lasque/tusdk/core/http/HttpEntity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/http/HttpResponse;->d:Lorg/lasque/tusdk/core/http/HttpEntity;

    return-void
.end method
