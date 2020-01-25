.class public abstract Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;
.super Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;


# instance fields
.field protected final append:Z

.field protected final file:Ljava/io/File;

.field protected frontendFile:Ljava/io/File;

.field protected final renameIfExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->file:Ljava/io/File;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->append:Z

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->renameIfExists:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;-><init>(Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;-><init>(Ljava/io/File;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZZ)V
    .locals 2

    invoke-direct {p0, p4}, Lorg/lasque/tusdk/core/http/ClearHttpResponseHandler;-><init>(Z)V

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    const-string v1, "File passed into FileHttpResponseHandler constructor must not be null"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "Cannot create parent directories for requested File location"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Cannot create directories for requested Directory location, might not be a problem"

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {v0, p4}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->file:Ljava/io/File;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->append:Z

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->renameIfExists:Z

    return-void
.end method


# virtual methods
.method public deleteTargetFile()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getOriginalFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Target file is null, fatal!"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->file:Ljava/io/File;

    return-object v0
.end method

.method protected getResponseData(Lorg/lasque/tusdk/core/http/HttpEntity;)[B
    .locals 8

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1}, Lorg/lasque/tusdk/core/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->append:Z

    invoke-direct {p1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz v0, :cond_1

    const/16 v3, 0x1000

    :try_start_0
    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v5, v6

    invoke-virtual {p1, v3, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v5

    invoke-virtual {p0, v6, v7, v1, v2}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->safeClose(Ljava/io/Closeable;)Z

    throw v1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->frontendFile:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTargetFileByParsingURL()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->frontendFile:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->frontendFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTargetFileByParsingURL()Ljava/io/File;
    .locals 8

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Target file is not a directory, cannot proceed"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getRequestURL()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "RequestURL is null, cannot proceed"

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getRequestURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->renameIfExists:Z

    if-eqz v4, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (%d)"

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (%d)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, v2

    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Tried creating temporary file without having Context"

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->asserts(ZLjava/lang/String;)V

    :try_start_0
    const-string v2, "temp_"

    const-string v3, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {v2, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v2, "Cannot create temporary file: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onFailure(ILjava/util/List;Ljava/lang/Throwable;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public final onFailure(ILjava/util/List;[BLjava/lang/Throwable;)V
    .locals 0
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

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->onFailure(ILjava/util/List;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method public abstract onSuccess(ILjava/util/List;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public final onSuccess(ILjava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;[B)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;->onSuccess(ILjava/util/List;Ljava/io/File;)V

    return-void
.end method
