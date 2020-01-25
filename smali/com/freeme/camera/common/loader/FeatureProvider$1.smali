.class Lcom/freeme/camera/common/loader/FeatureProvider$1;
.super Landroid/os/AsyncTask;
.source "FeatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/loader/FeatureProvider;->loadFeatureInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/loader/FeatureProvider;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/loader/FeatureProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/loader/FeatureProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {p1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$000(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$200(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadBuildInFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$102(Lcom/freeme/camera/common/loader/FeatureProvider;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$300(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$100(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$400(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$500(Lcom/freeme/camera/common/loader/FeatureProvider;)V

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$200(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadPluginFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$602(Lcom/freeme/camera/common/loader/FeatureProvider;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$300(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v1}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$600(Lcom/freeme/camera/common/loader/FeatureProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$700(Lcom/freeme/camera/common/loader/FeatureProvider;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/freeme/camera/common/loader/FeatureProvider$1;->this$0:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureProvider;->access$800(Lcom/freeme/camera/common/loader/FeatureProvider;)V

    const/4 v0, 0x0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
