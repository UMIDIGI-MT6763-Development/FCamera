.class Lorg/lasque/tusdk/core/http/ClearHttpClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/http/ClearHttpClient;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/http/ClearHttpClient;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/http/ClearHttpClient;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$1;->a:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/lasque/tusdk/core/http/HttpUriRequest;)V
    .locals 7

    const-string v0, "Accept-Encoding"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$1;->a:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    invoke-static {v0}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/ClearHttpClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v2

    const-string v3, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$1;->a:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    invoke-static {v6}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/ClearHttpClient;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/http/HttpHeader;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->removeHeader(Lorg/lasque/tusdk/core/http/HttpHeader;)V

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$1;->a:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    invoke-static {v2}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->a(Lorg/lasque/tusdk/core/http/ClearHttpClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
