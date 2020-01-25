.class public Lcom/freeme/camera/common/location/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/location/utils/ThreadPool$Worker;,
        Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;,
        Lcom/freeme/camera/common/location/utils/ThreadPool$JobContextStub;,
        Lcom/freeme/camera/common/location/utils/ThreadPool$CancelListener;,
        Lcom/freeme/camera/common/location/utils/ThreadPool$JobContext;,
        Lcom/freeme/camera/common/location/utils/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/freeme/camera/common/location/utils/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/location/utils/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/location/utils/ThreadPool$JobContextStub;-><init>(Lcom/freeme/camera/common/location/utils/ThreadPool$1;)V

    sput-object v0, Lcom/freeme/camera/common/location/utils/ThreadPool;->JOB_CONTEXT_STUB:Lcom/freeme/camera/common/location/utils/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/location/utils/ThreadPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/utils/ThreadPool;->mCpuCounter:Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;

    new-instance v0, Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/utils/ThreadPool;->mNetworkCounter:Lcom/freeme/camera/common/location/utils/ThreadPool$ResourceCounter;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/freeme/camera/common/location/utils/PriorityThreadFactory;

    const-string v1, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v9, v1, v2}, Lcom/freeme/camera/common/location/utils/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    const-wide/16 v5, 0xa

    move-object v2, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/utils/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public submit(Lcom/freeme/camera/common/location/utils/ThreadPool$Job;)Lcom/freeme/camera/common/location/utils/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/freeme/camera/common/location/utils/ThreadPool$Job<",
            "TT;>;)",
            "Lcom/freeme/camera/common/location/utils/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/common/location/utils/ThreadPool;->submit(Lcom/freeme/camera/common/location/utils/ThreadPool$Job;Lcom/freeme/camera/common/location/utils/FutureListener;)Lcom/freeme/camera/common/location/utils/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Lcom/freeme/camera/common/location/utils/ThreadPool$Job;Lcom/freeme/camera/common/location/utils/FutureListener;)Lcom/freeme/camera/common/location/utils/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/freeme/camera/common/location/utils/ThreadPool$Job<",
            "TT;>;",
            "Lcom/freeme/camera/common/location/utils/FutureListener<",
            "TT;>;)",
            "Lcom/freeme/camera/common/location/utils/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/freeme/camera/common/location/utils/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/freeme/camera/common/location/utils/ThreadPool$Worker;-><init>(Lcom/freeme/camera/common/location/utils/ThreadPool;Lcom/freeme/camera/common/location/utils/ThreadPool$Job;Lcom/freeme/camera/common/location/utils/FutureListener;)V

    iget-object p1, p0, Lcom/freeme/camera/common/location/utils/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
