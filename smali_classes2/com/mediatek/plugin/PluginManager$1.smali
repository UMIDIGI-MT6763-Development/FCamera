.class Lcom/mediatek/plugin/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/mediatek/plugin/parallel/ThreadPool$Job;


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
        "Lcom/mediatek/plugin/parallel/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/plugin/PluginManager;

.field final synthetic val$archivePaths:Ljava/util/ArrayList;

.field final synthetic val$index:I

.field final synthetic val$signatureCheckEnabled:Z

.field final synthetic val$xmlValidateEnabled:Z


# direct methods
.method constructor <init>(Lcom/mediatek/plugin/PluginManager;Ljava/util/ArrayList;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager$1;->this$0:Lcom/mediatek/plugin/PluginManager;

    iput-object p2, p0, Lcom/mediatek/plugin/PluginManager$1;->val$archivePaths:Ljava/util/ArrayList;

    iput p3, p0, Lcom/mediatek/plugin/PluginManager$1;->val$index:I

    iput-boolean p4, p0, Lcom/mediatek/plugin/PluginManager$1;->val$signatureCheckEnabled:Z

    iput-boolean p5, p0, Lcom/mediatek/plugin/PluginManager$1;->val$xmlValidateEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginManager$1;->run(Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7

    const-string p1, "PluginManager/PluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<preloadAllPlugins> plugin path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/plugin/PluginManager$1;->val$archivePaths:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mediatek/plugin/PluginManager$1;->val$index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/mediatek/plugin/preload/Preloader;->getInstance()Lcom/mediatek/plugin/preload/Preloader;

    move-result-object v1

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$1;->this$0:Lcom/mediatek/plugin/PluginManager;

    invoke-static {p1}, Lcom/mediatek/plugin/PluginManager;->access$000(Lcom/mediatek/plugin/PluginManager;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$1;->val$archivePaths:Ljava/util/ArrayList;

    iget v0, p0, Lcom/mediatek/plugin/PluginManager$1;->val$index:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$1;->this$0:Lcom/mediatek/plugin/PluginManager;

    invoke-static {p1}, Lcom/mediatek/plugin/PluginManager;->access$100(Lcom/mediatek/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/plugin/PluginManager$1;->val$signatureCheckEnabled:Z

    iget-boolean v6, p0, Lcom/mediatek/plugin/PluginManager$1;->val$xmlValidateEnabled:Z

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/plugin/preload/Preloader;->preloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/mediatek/plugin/element/PluginDescriptor;

    move-result-object p1

    const-string v0, "PluginManager/PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<preloadAllPlugins> pluginDescriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/plugin/PluginManager$1;->this$0:Lcom/mediatek/plugin/PluginManager;

    invoke-static {v0}, Lcom/mediatek/plugin/PluginManager;->access$200(Lcom/mediatek/plugin/PluginManager;)Lcom/mediatek/plugin/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/plugin/PluginRegistry;->addPluginDescriptor(Lcom/mediatek/plugin/element/PluginDescriptor;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
