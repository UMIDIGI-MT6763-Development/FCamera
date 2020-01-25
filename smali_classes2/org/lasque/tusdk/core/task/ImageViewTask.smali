.class public abstract Lorg/lasque/tusdk/core/task/ImageViewTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/lasque/tusdk/core/task/ImageViewTaskWare;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/task/ImageViewTask;)Lorg/lasque/tusdk/core/task/ImageViewTaskWare;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->d:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/task/ImageViewTask;Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->a(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/task/ImageViewTask;Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/task/ImageViewTask;->b(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->loadDiscBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeDisk:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeBuild:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lorg/lasque/tusdk/core/task/ImageViewTask;->a(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    sget-object v3, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeDisk:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    if-ne v2, v3, :cond_1

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->saveToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->isSaveToDisk()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->getImageCompress()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->save(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            "Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->b:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/task/ImageViewTask$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/task/ImageViewTask$2;-><init>(Lorg/lasque/tusdk/core/task/ImageViewTask;Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()Lorg/lasque/tusdk/core/task/ImageViewTaskWare;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->isCancel()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-object v1
.end method

.method private b(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            "Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->imageLoaded(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->c:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->submitTask(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    return-void
.end method


# virtual methods
.method protected abstract asyncTaskLoadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public cancelLoadImage(Landroid/widget/ImageView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->d:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->isEqualView(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->d:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->cancel()V

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTask;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->isEqualView(Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->cancel()V

    iget-object v2, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/ImageViewTask;->resetQueues()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected abstract getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public loadImage(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/task/ImageViewTask;->cancelLoadImage(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->getCacheKey(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->loadMemoryBitmap(Ljava/lang/String;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeMomery:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->imageLoaded(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/ImageViewTask;->submitTask(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V

    return-void
.end method

.method public resetQueues()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "%s resetQueues"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public submitTask(Lorg/lasque/tusdk/core/task/ImageViewTaskWare;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->c:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/ImageViewTask;->b()Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->d:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    iget-object p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->d:Lorg/lasque/tusdk/core/task/ImageViewTaskWare;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTask;->c:Z

    new-instance p1, Lorg/lasque/tusdk/core/task/ImageViewTask$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/task/ImageViewTask$1;-><init>(Lorg/lasque/tusdk/core/task/ImageViewTask;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method
