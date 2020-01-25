.class Lcom/mediatek/plugin/PluginManager$2$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/mediatek/plugin/parallel/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/plugin/PluginManager$2;->onFutureDone(Lcom/mediatek/plugin/parallel/Future;)V
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
.field final synthetic this$1:Lcom/mediatek/plugin/PluginManager$2;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/plugin/PluginManager$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/plugin/PluginManager$2$1;->this$1:Lcom/mediatek/plugin/PluginManager$2;

    iput-object p2, p0, Lcom/mediatek/plugin/PluginManager$2$1;->val$pluginId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/plugin/PluginManager$2$1;->run(Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/mediatek/plugin/parallel/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/mediatek/plugin/PluginManager$2$1;->this$1:Lcom/mediatek/plugin/PluginManager$2;

    iget-object p1, p1, Lcom/mediatek/plugin/PluginManager$2;->this$0:Lcom/mediatek/plugin/PluginManager;

    iget-object v0, p0, Lcom/mediatek/plugin/PluginManager$2$1;->val$pluginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/plugin/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/mediatek/plugin/Plugin;

    const/4 p1, 0x0

    return-object p1
.end method
