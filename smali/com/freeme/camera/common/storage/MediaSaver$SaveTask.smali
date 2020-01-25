.class Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;
.super Landroid/os/AsyncTask;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

.field final synthetic this$0:Lcom/freeme/camera/common/storage/MediaSaver;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/storage/MediaSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/storage/MediaSaver;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SaveTask]doInBackground+, queue is empty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/storage/MediaSaver$Request;

    iput-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1000(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$1100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$1200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$1200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

    invoke-static {v0}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;->onFileSaved(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-static {p1}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1300(Lcom/freeme/camera/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->mRequest:Lcom/freeme/camera/common/storage/MediaSaver$Request;

    invoke-static {v1}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;->onFileSaved(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/storage/MediaSaver;->access$1402(Lcom/freeme/camera/common/storage/MediaSaver;Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;)Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;

    invoke-static {}, Lcom/freeme/camera/common/storage/MediaSaver;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v1, "[SaveTask] doInBackground-"

    invoke-static {p1, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/storage/MediaSaver$SaveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/storage/MediaSaver;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[SaveTask]onPreExcute."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
