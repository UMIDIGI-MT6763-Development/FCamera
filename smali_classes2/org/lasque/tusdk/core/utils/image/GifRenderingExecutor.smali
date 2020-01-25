.class public final Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# static fields
.field private static volatile a:Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static getInstance()Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;->a:Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    if-nez v0, :cond_1

    const-class v0, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;->a:Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;-><init>()V

    sput-object v1, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;->a:Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;->a:Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    return-object v0
.end method
