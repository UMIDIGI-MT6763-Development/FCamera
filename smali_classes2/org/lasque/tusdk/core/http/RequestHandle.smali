.class public Lorg/lasque/tusdk/core/http/RequestHandle;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/lasque/tusdk/core/http/ClearHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/http/ClearHttpRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/core/http/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lorg/lasque/tusdk/core/http/RequestHandle$1;-><init>(Lorg/lasque/tusdk/core/http/RequestHandle;Lorg/lasque/tusdk/core/http/ClearHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->cancel(Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setTag(Ljava/lang/Object;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/http/ClearHttpRequest;->setRequestTag(Ljava/lang/Object;)Lorg/lasque/tusdk/core/http/ClearHttpRequest;

    :cond_0
    return-object p0
.end method

.method public shouldBeGarbageCollected()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/http/RequestHandle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/http/RequestHandle;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_2
    return v0
.end method
