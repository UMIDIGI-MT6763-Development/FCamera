.class public abstract Lorg/lasque/tusdk/core/http/HttpUriRequest;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/lasque/tusdk/core/http/HttpEntity;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/net/URL;

.field private d:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-static {p1}, Lorg/lasque/tusdk/core/http/URLEncodedUtils;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setURL(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setURL(Ljava/net/URL;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentType()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    new-instance v1, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-direct {v1, p1, p2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addHeaders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract canOutput()Z
.end method

.method public abstract canUseCache()Z
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
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

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    return-object v0
.end method

.method public getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->a:Lorg/lasque/tusdk/core/http/HttpEntity;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/lasque/tusdk/core/http/HttpHeader;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v2, p1}, Lorg/lasque/tusdk/core/http/HttpHeader;->equalsName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->c:Ljava/net/URL;

    return-object v0
.end method

.method public openConnection()Ljava/net/HttpURLConnection;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->abort()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->canOutput()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->canUseCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->canUseCache()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->canOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->a(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->d:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/http/HttpHeader;->equalsName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeHeader(Lorg/lasque/tusdk/core/http/HttpHeader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEntity(Lorg/lasque/tusdk/core/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->a:Lorg/lasque/tusdk/core/http/HttpEntity;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/http/HttpHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->b:Ljava/util/List;

    new-instance v1, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-direct {v1, p1, p2}, Lorg/lasque/tusdk/core/http/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/HttpHeader;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/HttpUriRequest;->c:Ljava/net/URL;

    return-void
.end method
