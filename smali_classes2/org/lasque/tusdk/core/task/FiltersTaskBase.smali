.class public abstract Lorg/lasque/tusdk/core/task/FiltersTaskBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/task/FilterTaskInterface;


# static fields
.field public static final TAG:Ljava/lang/String; = "FiltersTaskBase"


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->d:Ljava/util/Hashtable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->getCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->addCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/task/FiltersTaskBase;Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a(Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)V
    .locals 3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->getFilterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->addCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->setImageResult(Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->getSampleRootPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "lfs"

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private b()Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->renderFilterThumb()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->h:Z

    return v0
.end method

.method private c()V
    .locals 5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->getInputImage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "%s You need set inputImage."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FiltersTaskBase"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c:Ljava/util/List;

    if-nez v0, :cond_2

    const-string v0, "%s You need set filerNames."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FiltersTaskBase"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->getSampleRootPath()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "%s Can not found SampleRootPath: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FiltersTaskBase"

    aput-object v4, v3, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a:Ljava/io/File;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/lasque/tusdk/core/task/FiltersTaskBase$1;

    invoke-direct {v3, p0, v2}, Lorg/lasque/tusdk/core/task/FiltersTaskBase$1;-><init>(Lorg/lasque/tusdk/core/task/FiltersTaskBase;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->g:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public addCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->d:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public appendFilterCode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected asyncBuildWithFilterName(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;-><init>()V

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->setFilterName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v2, 0x5a

    invoke-static {v0, p1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->f:Landroid/os/Handler;

    new-instance v0, Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase$2;-><init>(Lorg/lasque/tusdk/core/task/FiltersTaskBase;Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelLoadImage(Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->cancelLoadImage(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->isEqualView(Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->resetQueues()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getFilerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c:Ljava/util/List;

    return-object v0
.end method

.method public getInputImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSampleRootPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a:Ljava/io/File;

    return-object v0
.end method

.method public isRenderFilterThumb()Z
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b()Z

    move-result v0

    return v0
.end method

.method public loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->loadFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->cancelLoadImage(Landroid/widget/ImageView;)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    new-instance v0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;

    invoke-direct {v0, p1, p2}, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public resetQueues()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public setFilerNames(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->verifyCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->appendFilterCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setInputImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRenderFilterThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->h:Z

    return-void
.end method

.method public setSampleRootPath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->a:Ljava/io/File;

    return-void
.end method

.method public start()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskBase;->c()V

    return-void
.end method
