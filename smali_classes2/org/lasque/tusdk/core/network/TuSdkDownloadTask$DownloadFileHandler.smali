.class Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;
.super Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFileHandler"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/http/FileHttpResponseHandler;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/util/List;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 2
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

    const-string p1, "TuSdkDownloadTask onFailure: %s(%s) |%s"

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-static {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-static {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v0

    iget-wide v0, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    aput-object p4, p2, v0

    invoke-static {p3, p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    sget-object p2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDownFailed:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-static {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v0

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    iput p1, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->progress:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    sget-object p2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;Ljava/io/File;)V
    .locals 0
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

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;->a:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-static {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object p1

    invoke-static {p2}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->attachmentFileName(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->fileName:Ljava/lang/String;

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler$1;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler$1;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
