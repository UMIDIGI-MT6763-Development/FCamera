.class public abstract Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;
.super Lorg/lasque/tusdk/core/task/ImageViewTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/lasque/tusdk/core/task/ImageViewTaskWare;",
        ">",
        "Lorg/lasque/tusdk/core/task/ImageViewTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

.field private c:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

.field private d:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTask;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter$1;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    const-string v0, "%s-downloads"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowned:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->trySaveTaskDataInCache()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadDelegate()Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadDelegate()Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;->onDownloadMangerStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method


# virtual methods
.method protected appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->containsGroupId(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->key:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected asyncLoadDownloadDatas()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->appendDownload(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelDownload(J)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->containsGroupId(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadTaskType()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->cancelTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z

    return-void
.end method

.method public abstract containsGroupId(J)Z
.end method

.method public download(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->containsGroupId(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadTaskType()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    move-result-object v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->appenTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllDatas()Lorg/json/JSONObject;
    .locals 4

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadTaskType()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getAllGroupID()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->getAllDatas(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAllGroupID()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation
.end method

.method public getDownloadDelegate()Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    return-object v0
.end method

.method protected getDownloadItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method protected getDownloadTaskType()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->c:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    return-object v0
.end method

.method protected abstract removeDownloadData(J)V
.end method

.method public removeDownloadWithIdt(J)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->containsGroupId(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->removeDownloadData(J)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    iget-wide v3, v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->trySaveTaskDataInCache()V

    sget-object p1, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusRemoved:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-direct {p0, v1, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method public setDownloadDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    return-void
.end method

.method protected setDownloadItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    return-void
.end method

.method protected setDownloadTaskType(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->c:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    return-void
.end method

.method protected tryLoadTaskDataWithCache()V
    .locals 5

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->appenDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->localDownloadPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "download %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->getDownloadTaskType()Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->trySaveTaskDataInCache()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected trySaveTaskDataInCache()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadAdapter;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
