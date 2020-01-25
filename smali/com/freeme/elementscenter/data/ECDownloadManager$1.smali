.class Lcom/freeme/elementscenter/data/ECDownloadManager$1;
.super Lcom/freeme/elementscenter/data/ECDownloadTask;
.source "ECDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/data/ECDownloadManager;->startDownload(Landroid/content/Context;Lcom/freeme/elementscenter/ui/ECItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/data/ECDownloadManager;Landroid/content/Context;Lcom/freeme/elementscenter/data/ECDownloadManager;Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/freeme/elementscenter/data/ECDownloadTask;-><init>(Landroid/content/Context;Lcom/freeme/elementscenter/data/ECDownloadManager;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/freeme/elementscenter/data/ECDownloadTask;->onPostExecute(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->access$000(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->access$000(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->access$100(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->access$100(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/data/ECDownloadTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/freeme/elementscenter/data/ECDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->access$000(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/elementscenter/data/ECDownloadManager$1;->this$0:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->access$100(Lcom/freeme/elementscenter/data/ECDownloadManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
