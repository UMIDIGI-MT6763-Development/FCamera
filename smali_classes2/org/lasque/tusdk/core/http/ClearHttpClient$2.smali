.class Lorg/lasque/tusdk/core/http/ClearHttpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpClient$2;->a:Lorg/lasque/tusdk/core/http/ClearHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentEncoding()Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/http/HttpHeader;->equalsValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/http/ClearHttpClient$InflatingEntity;-><init>(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/http/HttpResponse;->setEntity(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    :cond_1
    return-void
.end method
