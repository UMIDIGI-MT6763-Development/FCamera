.class Lcom/mediatek/plugin/PluginManager$2;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/mediatek/plugin/parallel/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/plugin/PluginManager;->preloadAllPlugins(ZZZLcom/mediatek/plugin/PluginManager$PreloaderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mediatek/plugin/parallel/FutureListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/plugin/PluginManager;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$listener:Lcom/mediatek/plugin/PluginManager$PreloaderListener;

.field final synthetic val$preloadPluginClassEnabled:Z


# direct methods
.method constructor <init>(Lcom/mediatek/plugin/PluginManager;Ljava/util/concurrent/CountDownLatch;Lcom/mediatek/plugin/PluginManager$PreloaderListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager$2;->this$0:Lcom/mediatek/plugin/PluginManager;

    iput-object p2, p0, Lcom/mediatek/plugin/PluginManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/mediatek/plugin/PluginManager$2;->val$listener:Lcom/mediatek/plugin/PluginManager$PreloaderListener;

    iput-boolean p4, p0, Lcom/mediatek/plugin/PluginManager$2;->val$preloadPluginClassEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcom/mediatek/plugin/parallel/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/plugin/parallel/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string p1, "PluginManager/PluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<preloadAllPlugins.onFutureDone> latch count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/plugin/PluginManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$2;->this$0:Lcom/mediatek/plugin/PluginManager;

    invoke-static {p1}, Lcom/mediatek/plugin/PluginManager;->access$200(Lcom/mediatek/plugin/PluginManager;)Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mediatek/plugin/PluginRegistry;->generateRelationship()V

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$2;->val$listener:Lcom/mediatek/plugin/PluginManager$PreloaderListener;

    invoke-interface {p1}, Lcom/mediatek/plugin/PluginManager$PreloaderListener;->onPreloadFinished()V

    const-string p1, "PluginManager/PluginManager"

    const-string v0, "<preloadAllPlugins.onFutureDone> onPreloadFinished done!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/mediatek/plugin/PluginManager$2;->val$preloadPluginClassEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$2;->this$0:Lcom/mediatek/plugin/PluginManager;

    invoke-static {p1}, Lcom/mediatek/plugin/PluginManager;->access$200(Lcom/mediatek/plugin/PluginManager;)Lcom/mediatek/plugin/PluginRegistry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mediatek/plugin/PluginRegistry;->getAllPluginsId()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/mediatek/plugin/parallel/ThreadPool;->getInstance()Lcom/mediatek/plugin/parallel/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/mediatek/plugin/PluginManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/plugin/PluginManager$2$1;-><init>(Lcom/mediatek/plugin/PluginManager$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mediatek/plugin/parallel/ThreadPool;->submit(Lcom/mediatek/plugin/parallel/ThreadPool$Job;)Lcom/mediatek/plugin/parallel/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
