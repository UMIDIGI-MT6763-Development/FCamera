.class public Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/lasque/tusdk/core/seles/SelesFramebuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "%sx%s-%s:%s:%s:%s:%s:%s:%s"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->minFilter:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->magFilter:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x4

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x5

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->internalFormat:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->format:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x7

    aput-object p1, v1, v2

    iget p1, p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-NOFB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/lasque/tusdk/core/seles/SelesFramebuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "%s fetchFramebuffer: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-direct {v2, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)V

    :cond_1
    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    return-object v2
.end method

.method public fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object p1

    return-object p1
.end method

.method public returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->clearAllLocks()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->isMissingFramebuffer()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->a(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
