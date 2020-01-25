.class public Lorg/lasque/tusdk/core/http/ClearHttpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/lasque/tusdk/core/http/HttpManager;

.field private final b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

.field private final c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:I

.field private f:Z

.field private volatile g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/http/HttpManager;Lorg/lasque/tusdk/core/http/HttpUriRequest;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "httpManager"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/http/HttpManager;

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a:Lorg/lasque/tusdk/core/http/HttpManager;

    const-string p1, "uriRequest"

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/http/HttpUriRequest;

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    const-string p1, "responseHandler"

    invoke-static {p3, p1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    return-void
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    instance-of v1, v0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->updateRequestHeaders(Lorg/lasque/tusdk/core/http/HttpUriRequest;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a:Lorg/lasque/tusdk/core/http/HttpManager;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/HttpManager;->execute(Lorg/lasque/tusdk/core/http/HttpUriRequest;)Lorg/lasque/tusdk/core/http/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v1, v1, v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->onPreProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a:Lorg/lasque/tusdk/core/http/HttpManager;

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/http/HttpManager;->executeResponse(Lorg/lasque/tusdk/core/http/HttpResponse;Lorg/lasque/tusdk/core/http/HttpUriRequest;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendResponseMessage(Lorg/lasque/tusdk/core/http/HttpResponse;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v1, v1, v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->onPostProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->disconnect()V

    const-string v1, "%s(%s): %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->getURL()Ljava/net/URL;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :catch_1
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a:Lorg/lasque/tusdk/core/http/HttpManager;

    iget v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    invoke-virtual {v3, v2, v4}, Lorg/lasque/tusdk/core/http/HttpManager;->retryRequest(Ljava/io/IOException;I)Z

    move-result v3

    move v6, v3

    move-object v3, v2

    move v2, v6

    goto :goto_1

    :catch_2
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a:Lorg/lasque/tusdk/core/http/HttpManager;

    iget v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/lasque/tusdk/core/http/HttpManager;->retryRequest(Ljava/io/IOException;I)Z

    move-result v2

    goto :goto_1

    :catch_3
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->a:Lorg/lasque/tusdk/core/http/HttpManager;

    iget v5, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    invoke-virtual {v4, v2, v5}, Lorg/lasque/tusdk/core/http/HttpManager;->retryRequest(Ljava/io/IOException;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    iget v5, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->e:I

    invoke-interface {v4, v5}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move v1, v2

    move-object v2, v3

    goto/16 :goto_0

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "Unhandled exception origin cause"

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    throw v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->f:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b:Lorg/lasque/tusdk/core/http/HttpUriRequest;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->abort()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c()V

    :cond_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPostProcessRequest(Lorg/lasque/tusdk/core/http/ClearHttpRequest;)V
    .locals 0

    return-void
.end method

.method public onPreProcessRequest(Lorg/lasque/tusdk/core/http/ClearHttpRequest;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->h:Z

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->onPreProcessRequest(Lorg/lasque/tusdk/core/http/ClearHttpRequest;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendStartMessage()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    const-string v2, "makeRequestWithRetries returned error"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->sendFinishMessage()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->onPostProcessRequest(Lorg/lasque/tusdk/core/http/ClearHttpRequest;)V

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->g:Z

    return-void
.end method

.method public setRequestTag(Ljava/lang/Object;)Lorg/lasque/tusdk/core/http/ClearHttpRequest;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->c:Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method
