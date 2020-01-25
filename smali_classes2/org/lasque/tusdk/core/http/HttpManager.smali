.class public Lorg/lasque/tusdk/core/http/HttpManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;,
        Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/http/HttpManager;->a:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/http/HttpManager;->b:Ljava/util/HashSet;

    sget-object v0, Lorg/lasque/tusdk/core/http/HttpManager;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/http/HttpManager;->a:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/http/HttpManager;->b:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/lasque/tusdk/core/http/HttpManager;->b:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->m:Ljava/util/List;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;

    invoke-interface {v1, p1}, Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;->process(Lorg/lasque/tusdk/core/http/HttpResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/http/HttpUriRequest;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;

    invoke-interface {v1, p1}, Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;->process(Lorg/lasque/tusdk/core/http/HttpUriRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addRequestInterceptor(Lorg/lasque/tusdk/core/http/HttpManager$HttpRequestInterceptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponseInterceptor(Lorg/lasque/tusdk/core/http/HttpManager$HttpResponseInterceptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute(Lorg/lasque/tusdk/core/http/HttpUriRequest;)Lorg/lasque/tusdk/core/http/HttpResponse;
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->a(Lorg/lasque/tusdk/core/http/HttpUriRequest;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->openConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpManager;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpManager;->getResponseTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/HttpManager;->isEnableRedirct()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Lorg/lasque/tusdk/core/http/HttpResponse;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/http/HttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->canOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpResponse;->openOutputStream()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object p1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    return-object v1
.end method

.method public executeResponse(Lorg/lasque/tusdk/core/http/HttpResponse;Lorg/lasque/tusdk/core/http/HttpUriRequest;)V
    .locals 0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->openInputStream()V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->a(Lorg/lasque/tusdk/core/http/HttpResponse;)V

    return-void
.end method

.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->d:I

    return v0
.end method

.method public getDefaultMaxRetries()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->g:I

    return v0
.end method

.method public getDefaultRetrySleepTimemillis()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->h:I

    return v0
.end method

.method public getHttpPort()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->i:I

    return v0
.end method

.method public getHttpsPort()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->j:I

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->c:I

    return v0
.end method

.method public getResponseTimeout()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->e:I

    return v0
.end method

.method public getSocketBufferSize()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->f:I

    return v0
.end method

.method public isEnableRedirct()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->k:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;I)Z
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpManager;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Lorg/lasque/tusdk/core/http/HttpManager;->a:Ljava/util/HashSet;

    invoke-direct {p0, p2, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/lasque/tusdk/core/http/HttpManager;->b:Ljava/util/HashSet;

    invoke-direct {p0, p2, p1}, Lorg/lasque/tusdk/core/http/HttpManager;->a(Ljava/util/HashSet;Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->h:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v1
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->d:I

    return-void
.end method

.method public setDefaultMaxRetries(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->g:I

    return-void
.end method

.method public setDefaultRetrySleepTimemillis(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->h:I

    return-void
.end method

.method public setEnableRedirct(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->k:Z

    return-void
.end method

.method public setHttpPort(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->i:I

    return-void
.end method

.method public setHttpsPort(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->j:I

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->c:I

    return-void
.end method

.method public setResponseTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->e:I

    return-void
.end method

.method public setSocketBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpManager;->f:I

    return-void
.end method
