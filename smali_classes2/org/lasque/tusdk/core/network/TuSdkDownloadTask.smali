.class public Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;,
        Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;,
        Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;
    }
.end annotation


# static fields
.field public static final PROGRESS_INTERVAL:J = 0x1f4L


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

.field private e:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

.field private f:Lorg/lasque/tusdk/core/http/RequestHandle;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    return-object p0
.end method

.method private a()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusInit:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    if-nez v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDownFailed:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object v0

    :cond_1
    :goto_0
    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$3;->a:[I

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b()V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->clear()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->setStatus(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->c(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->canRunTask()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->onDestory()V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->clear()V

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    const-string v0, "/%s/download?id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    iget-object v2, v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    iget-object v2, v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->fileId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v1

    new-instance v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;

    iget-object v4, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localTempPath()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadFileHandler;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Ljava/io/File;)V

    invoke-virtual {v1, v0, v3, v2}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->get(Ljava/lang/String;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->f:Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->c()V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->e:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->e:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;->onDownloadTaskStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$1;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localTempPath()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->rename(Ljava/io/File;Ljava/io/File;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$2;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)Z
    .locals 8

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->c:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long p1, v4, v6

    if-gez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput-wide v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->c:J

    return v1
.end method


# virtual methods
.method public canRunTask()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$3;->a:[I

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->f:Lorg/lasque/tusdk/core/http/RequestHandle;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/http/RequestHandle;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->f:Lorg/lasque/tusdk/core/http/RequestHandle;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusCancel:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a(Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localTempPath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    return-void
.end method

.method public equals(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    iget-wide v0, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->e:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    return-object v0
.end method

.method public getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    return-object v0
.end method

.method public onDestory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->e:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->clear()V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->e:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    return-void
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->a()V

    return-void
.end method
