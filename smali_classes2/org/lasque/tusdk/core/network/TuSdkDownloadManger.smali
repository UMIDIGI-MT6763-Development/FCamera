.class public Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;
    }
.end annotation


# static fields
.field public static final ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c:Ljava/util/List;

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$1;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->d()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    const-string v0, "%s-queue"

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

.method private a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->canRunTask()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->d()V

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c()V

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a()Ljava/lang/String;

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

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    new-instance v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-direct {v2, v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->canRunTask()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->clear()V

    goto :goto_0

    :cond_2
    const-string v0, "load download tasks: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v2

    invoke-interface {v1, p0, v2, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;->onDownloadMangerStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->canRunTask()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->canRunTask()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->d:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->setDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$TuSdkDownloadTaskDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->b:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->start()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public appenDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public appenTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->cancelTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;-><init>()V

    iput-object p1, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    iput-wide p2, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    iput-object p4, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->key:Ljava/lang/String;

    iput-object p5, v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->fileId:Ljava/lang/String;

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    new-instance p2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-direct {p2, v0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;-><init>(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v2, p1, p2, p3}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->equals(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->cancel()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c()V

    :cond_2
    return v1
.end method

.method public containsTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v3

    iget-wide v3, v3, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object p1

    sget-object p2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusInit:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    if-eq p1, p2, :cond_1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object p1

    sget-object p2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public getAllDatas(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "fun"

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "locals"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->buildJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "queues"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "StickerLocalPackage getAllDatas"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public isDownloading(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v3

    iget-object v3, v3, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->type:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    if-ne v3, p1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object v3

    iget-wide v3, v3, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;->getItem()Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatus()Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    move-result-object p1

    sget-object p2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDowning:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    if-ne p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public removeDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
