.class public abstract Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;


# static fields
.field public static final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;-><init>(Ljava/io/File;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->b:Z

    return-void
.end method


# virtual methods
.method protected getResponseData(Lorg/lasque/tusdk/core/http/HttpEntity;)[B
    .locals 9

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    add-long/2addr v1, v3

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->b:Z

    invoke-direct {p1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz v0, :cond_1

    const/16 v3, 0x1000

    :try_start_0
    new-array v3, v3, [B

    :goto_0
    iget-wide v4, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v5, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    iget-wide v4, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    invoke-virtual {p0, v4, v5, v1, v2}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    throw v1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendResponseMessage(Lorg/lasque/tusdk/core/http/HttpResponse;)V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseCode()I

    move-result v0

    const/16 v1, 0x1a0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v2}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->sendSuccessMessage(ILjava/util/List;[B)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lorg/lasque/tusdk/core/http/HttpResponseException;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lorg/lasque/tusdk/core/http/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->sendFailureMessage(ILjava/util/List;[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Content-Range"

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/lasque/tusdk/core/http/HttpHeader;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->b:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    goto :goto_0

    :cond_2
    const-string v3, "%s : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Content-Range"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/http/HttpHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getAllHeaders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/http/HttpResponse;->getEntity()Lorg/lasque/tusdk/core/http/HttpEntity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->getResponseData(Lorg/lasque/tusdk/core/http/HttpEntity;)[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->sendSuccessMessage(ILjava/util/List;[B)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateRequestHeaders(Lorg/lasque/tusdk/core/http/HttpUriRequest;)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->b:Z

    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/lasque/tusdk/core/http/RangeFileHttpResponseHandler;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
