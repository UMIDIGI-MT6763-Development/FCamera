.class public Lcom/mediatek/plugin/parallel/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/plugin/parallel/ThreadPool$Worker;,
        Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;,
        Lcom/mediatek/plugin/parallel/ThreadPool$CancelListener;,
        Lcom/mediatek/plugin/parallel/ThreadPool$JobContextStub;,
        Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;,
        Lcom/mediatek/plugin/parallel/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final CPU_CORES_NUM:I

.field public static final JOB_CONTEXT_STUB:Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field public static final PARALLEL_THREAD_NUM:I

.field public static final PARALLEL_THREAD_NUM_MIN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PluginManager/ThreadPool"

.field private static mThreadPool:Lcom/mediatek/plugin/parallel/ThreadPool;


# instance fields
.field mCpuCounter:Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mediatek/plugin/parallel/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/plugin/parallel/ThreadPool$JobContextStub;-><init>(Lcom/mediatek/plugin/parallel/ThreadPool$1;)V

    sput-object v0, Lcom/mediatek/plugin/parallel/ThreadPool;->JOB_CONTEXT_STUB:Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/mediatek/plugin/parallel/ThreadPool;->CPU_CORES_NUM:I

    sget v0, Lcom/mediatek/plugin/parallel/ThreadPool;->CPU_CORES_NUM:I

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v2, v0, 0x2

    :goto_0
    sput v2, Lcom/mediatek/plugin/parallel/ThreadPool;->PARALLEL_THREAD_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/mediatek/plugin/parallel/ThreadPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;

    sget v1, Lcom/mediatek/plugin/parallel/ThreadPool;->PARALLEL_THREAD_NUM:I

    invoke-direct {v0, v1}, Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/plugin/parallel/ThreadPool;->mCpuCounter:Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;

    new-instance v0, Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;

    sget v1, Lcom/mediatek/plugin/parallel/ThreadPool;->PARALLEL_THREAD_NUM:I

    invoke-direct {v0, v1}, Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/plugin/parallel/ThreadPool;->mNetworkCounter:Lcom/mediatek/plugin/parallel/ThreadPool$ResourceCounter;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/mediatek/plugin/parallel/PriorityThreadFactory;

    const-string v1, "plugin-thread"

    const/16 v2, 0xa

    invoke-direct {v9, v1, v2}, Lcom/mediatek/plugin/parallel/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    const-wide/16 v5, 0xa

    move-object v2, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/mediatek/plugin/parallel/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static getInstance()Lcom/mediatek/plugin/parallel/ThreadPool;
    .locals 1

    sget-object v0, Lcom/mediatek/plugin/parallel/ThreadPool;->mThreadPool:Lcom/mediatek/plugin/parallel/ThreadPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/plugin/parallel/ThreadPool;

    invoke-direct {v0}, Lcom/mediatek/plugin/parallel/ThreadPool;-><init>()V

    sput-object v0, Lcom/mediatek/plugin/parallel/ThreadPool;->mThreadPool:Lcom/mediatek/plugin/parallel/ThreadPool;

    :cond_0
    sget-object v0, Lcom/mediatek/plugin/parallel/ThreadPool;->mThreadPool:Lcom/mediatek/plugin/parallel/ThreadPool;

    return-object v0
.end method


# virtual methods
.method public submit(Lcom/mediatek/plugin/parallel/ThreadPool$Job;)Lcom/mediatek/plugin/parallel/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/plugin/parallel/ThreadPool$Job<",
            "TT;>;)",
            "Lcom/mediatek/plugin/parallel/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/plugin/parallel/ThreadPool;->submit(Lcom/mediatek/plugin/parallel/ThreadPool$Job;Lcom/mediatek/plugin/parallel/FutureListener;)Lcom/mediatek/plugin/parallel/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Lcom/mediatek/plugin/parallel/ThreadPool$Job;Lcom/mediatek/plugin/parallel/FutureListener;)Lcom/mediatek/plugin/parallel/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mediatek/plugin/parallel/ThreadPool$Job<",
            "TT;>;",
            "Lcom/mediatek/plugin/parallel/FutureListener<",
            "TT;>;)",
            "Lcom/mediatek/plugin/parallel/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mediatek/plugin/parallel/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/plugin/parallel/ThreadPool$Worker;-><init>(Lcom/mediatek/plugin/parallel/ThreadPool;Lcom/mediatek/plugin/parallel/ThreadPool$Job;Lcom/mediatek/plugin/parallel/FutureListener;)V

    iget-object p1, p0, Lcom/mediatek/plugin/parallel/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
