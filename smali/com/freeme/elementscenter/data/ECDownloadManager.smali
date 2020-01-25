.class public Lcom/freeme/elementscenter/data/ECDownloadManager;
.super Ljava/lang/Object;
.source "ECDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;
    }
.end annotation


# static fields
.field private static final MAX_SYNC_DOWNLOAD:I = 0x5

.field private static mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStateTables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskExcuteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/data/ECDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskReadyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/data/ECDownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskReadyList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskExcuteList:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mStateTables:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskExcuteList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskReadyList:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;
    .locals 1

    sget-object v0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-direct {v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;-><init>()V

    sput-object v0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    :cond_0
    sget-object v0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskExcuteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/data/ECDownloadTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freeme/elementscenter/data/ECDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/data/ECDownloadTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskExcuteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getProgressByCode(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mStateTables:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mStateTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public notifyDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mStateTables:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    iget v2, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;

    invoke-interface {v1, p1}, Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;->onDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public registerDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDownload(Landroid/content/Context;Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/4 v0, 0x0

    iput v0, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/data/ECDownloadManager;->notifyDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V

    new-instance v1, Lcom/freeme/elementscenter/data/ECDownloadManager$1;

    sget-object v2, Lcom/freeme/elementscenter/data/ECDownloadManager;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/freeme/elementscenter/data/ECDownloadManager$1;-><init>(Lcom/freeme/elementscenter/data/ECDownloadManager;Landroid/content/Context;Lcom/freeme/elementscenter/data/ECDownloadManager;Lcom/freeme/elementscenter/ui/ECItemData;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskExcuteList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskReadyList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/freeme/elementscenter/data/ECDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskExcuteList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mTaskReadyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mStateTables:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public unregisterDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
