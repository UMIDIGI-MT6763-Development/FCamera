.class abstract Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractCatchingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field exceptionType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TX;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field fallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;TF;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final done()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->maybePropagateCancellation(Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    return-void
.end method

.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v1, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    or-int/2addr v5, v6

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    or-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->isCancelled()Z

    move-result v4

    or-int/2addr v3, v4

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->fallback:Ljava/lang/Object;

    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_3
    :try_start_1
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Platform;->isInstanceOfThrowableClass(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2, v0}, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$AbstractCatchingFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_4
    return-void
.end method
