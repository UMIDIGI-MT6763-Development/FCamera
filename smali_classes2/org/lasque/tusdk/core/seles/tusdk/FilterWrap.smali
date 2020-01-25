.class public Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

.field private b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method protected constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-nez p1, :cond_0

    const-string p1, "Can not found FilterOption"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->d:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitScale()F

    move-result v4

    invoke-static {p1, v4}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v4, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->imageByFilteringImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v4, "appliedFilter Exception: %s "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v4, "appliedFilter OutOfMemoryError: %s "

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    :goto_0
    invoke-static {p1, v4, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    if-nez v0, :cond_0

    const-string v0, "Can not found Filter class: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->trace(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesParameters;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->args:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->loadTextures(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->loadInternalTextures(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->getRuntimeTextureDelegate()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->getRuntimeTextureDelegate()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption$RunTimeTextureDelegate;->getRunTimeTextures()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public static creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Can not found FilterOption"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-object v0
.end method


# virtual methods
.method public bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getOption()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    :cond_0
    return-object v0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->d:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->removeAllTargets()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->destroy()V

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getOption()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public equalsCode(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    return-object v0
.end method

.method public getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->hasFilterParameter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;->getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    return-object v0
.end method

.method public getOption()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    return-object v0
.end method

.method public hasFilterParameter()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;)V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v10, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    move v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;FLjava/util/concurrent/Semaphore;)V

    invoke-static {v10}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "process"

    new-array p3, v9, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$TempResult;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public processImage()V
    .locals 5

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->d:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    instance-of v3, v2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;

    invoke-interface {v2, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;->appendTextures(Ljava/util/List;)V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->processImage()V

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v3, v4, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public rotationTextures(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->texturesKeepInput:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap$2;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-virtual {v2, v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->hasFilterParameter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;->setParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    return-void
.end method

.method public submitFilterParameter()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->hasFilterParameter()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->b:Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;->submitParameter()V

    return-void
.end method
