.class public abstract Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler$ResponderHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Z

.field private e:Ljava/net/URL;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Looper;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->e:Ljava/net/URL;

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->f:Ljava/util/List;

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->h:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->setUseSynchronousMode(Z)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->setUsePoolThread(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->e:Ljava/net/URL;

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->f:Ljava/util/List;

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->setUsePoolThread(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->setUseSynchronousMode(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :cond_0
    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->f:Ljava/util/List;

    return-object v0
.end method

.method public getRequestURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->e:Ljava/net/URL;

    return-object v0
.end method

.method getResponseData(Lorg/lasque/tusdk/core/http/HttpEntity;)[B
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-nez v10, :cond_1

    int-to-long v10, v9

    add-long/2addr v7, v10

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    cmp-long v9, v2, v5

    if-gtz v9, :cond_0

    const-wide/16 v9, 0x1

    goto :goto_1

    :cond_0
    move-wide v9, v2

    :goto_1
    invoke-virtual {p0, v7, v8, v9, v10}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendProgressMessage(JJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->endEntityViaReflection(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    :goto_2
    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-static {p1}, Lorg/lasque/tusdk/core/http/ClearHttpClient;->endEntityViaReflection(Lorg/lasque/tusdk/core/http/HttpEntity;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "File too large to fit into available memory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_3
    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUsePoolThread()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->d:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->c:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onCancel()V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v3, :cond_0

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "RETRY_MESSAGE didn\'t get enough params"

    new-array v0, v4, [Ljava/lang/Object;

    :goto_0
    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    array-length v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v0, v2, :cond_1

    :try_start_1
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v0, v1, v5, v6}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onProgress(JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "custom onProgress contains an error: %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "PROGRESS_MESSAGE didn\'t got enough params"

    new-array v0, v4, [Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onFinish()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onStart()V

    goto :goto_1

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v5, 0x4

    if-lt v0, v5, :cond_2

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v3, p1, v3

    check-cast v3, Ljava/util/List;

    aget-object v2, p1, v2

    check-cast v2, [B

    check-cast v2, [B

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v3, v2, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "FAILURE_MESSAGE didn\'t got enough params"

    new-array v0, v4, [Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lt v0, v1, :cond_3

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, p1, v3

    check-cast v1, Ljava/util/List;

    aget-object p1, p1, v2

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, v0, v1, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onSuccess(ILjava/util/List;[B)V

    goto :goto_1

    :cond_3
    const-string p1, "SUCCESS_MESSAGE didn\'t got enough params"

    new-array v0, v4, [Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->onUserException(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "Request got cancelled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
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

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onPostProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public onPreProcessResponse(Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJ)V
    .locals 4

    const-string v0, "Progress %d from %d (%2.0f%%)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    long-to-double p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v2

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, p3

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRetry(I)V
    .locals 3

    const-string v0, "Request retry no. %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
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

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User-space exception detected! : %s"

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final sendCancelMessage()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V
    .locals 2
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p2, 0x2

    aput-object p3, v0, p2

    const/4 p2, 0x3

    aput-object p4, v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final sendProgressMessage(JJ)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendResponseMessage(Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->getResponseData(Lorg/lasque/tusdk/core/http/HttpEntity;)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/lasque/tusdk/core/http/HttpResponseException;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lorg/lasque/tusdk/core/http/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2, v1, v3}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendSuccessMessage(ILjava/util/List;[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final sendRetryMessage(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendSuccessMessage(ILjava/util/List;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->f:Ljava/util/List;

    return-void
.end method

.method public setRequestURL(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->e:Ljava/net/URL;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setUsePoolThread(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->d:Z

    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    const-string v0, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler$ResponderHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->g:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler$ResponderHandler;-><init>(Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;->c:Z

    return-void
.end method
