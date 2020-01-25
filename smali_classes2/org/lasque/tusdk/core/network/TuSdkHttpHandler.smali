.class public abstract Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;
.super Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/utils/TuSdkError;

.field private b:Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

.field private c:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;

.field private d:Ljava/util/Calendar;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 0

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->onRequestedPrepare(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->onRequestedFailed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V

    :goto_0
    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->onRequestedFinish(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;

    return-void
.end method

.method public getError()Lorg/lasque/tusdk/core/utils/TuSdkError;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a:Lorg/lasque/tusdk/core/utils/TuSdkError;

    return-object v0
.end method

.method public getJson()Lorg/lasque/tusdk/core/utils/json/JsonWrapper;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->b:Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    return-object v0
.end method

.method public getLastRequestTime()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->d:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMainLooperHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->e:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public getProgressListener()Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;

    return-object v0
.end method

.method protected hasError(Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/utils/TuSdkError;

    const-string v1, "lsq_network_request_return_error"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x194

    invoke-direct {p1, v1, v2}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a:Lorg/lasque/tusdk/core/utils/TuSdkError;

    return v0

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    const-string v2, "data"

    invoke-static {p1, v2}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->b:Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    const-string v1, "ttp"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-static {v4, v5}, Lorg/lasque/tusdk/core/utils/DateHelper;->parseCalendar(J)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->d:Ljava/util/Calendar;

    :cond_1
    const-string v1, "ret"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_4

    const/16 v1, -0xce

    if-eq p1, v1, :cond_3

    const/16 v1, -0xcf

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkError;

    const-string v2, "lsq_network_request_error"

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkError;

    const-string v2, "service error"

    invoke-direct {v1, v2, p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    :goto_1
    iput-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a:Lorg/lasque/tusdk/core/utils/TuSdkError;

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
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

    const-string p2, "Service connect error: %s"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p4, p2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->isNetworkAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lorg/lasque/tusdk/core/utils/TuSdkError;

    const-string p3, "lsq_network_connection_interruption"

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a:Lorg/lasque/tusdk/core/utils/TuSdkError;

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_2

    instance-of p2, p4, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p2, :cond_1

    new-instance p2, Lorg/lasque/tusdk/core/utils/TuSdkError;

    const-string p3, "lsq_network_connection_timeout"

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance p2, Lorg/lasque/tusdk/core/utils/TuSdkError;

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/lasque/tusdk/core/utils/TuSdkError;

    const-string p3, "lsq_network_request_error"

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :goto_1
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a(Z)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;

    if-eqz v0, :cond_0

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;->onHttpHandlerProgress(JJ)V

    :cond_0
    return-void
.end method

.method protected onRequestedFailed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 0

    return-void
.end method

.method protected onRequestedFinish(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 0

    return-void
.end method

.method protected onRequestedPrepare(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 0

    return-void
.end method

.method protected abstract onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
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

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a:Lorg/lasque/tusdk/core/utils/TuSdkError;

    invoke-static {p3}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->hasError(Lorg/json/JSONObject;)Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a(Z)V

    return-void
.end method

.method public postInMainThread(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getMainLooperHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setError(Lorg/lasque/tusdk/core/utils/TuSdkError;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->a:Lorg/lasque/tusdk/core/utils/TuSdkError;

    return-void
.end method

.method public setProgressListener(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler$HttpHandlerProgressListener;

    return-void
.end method
