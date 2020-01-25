.class Lcom/freeme/pluginmanager/PluginManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/pluginmanager/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/pluginmanager/PluginManager;


# direct methods
.method constructor <init>(Lcom/freeme/pluginmanager/PluginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[FREEME]PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v0}, Lcom/freeme/pluginmanager/PluginManager;->access$000(Lcom/freeme/pluginmanager/PluginManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[FREEME]PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    iget-object p1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {p1}, Lcom/freeme/pluginmanager/PluginManager;->access$000(Lcom/freeme/pluginmanager/PluginManager;)Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x81

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "[FREEME]PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): packageInfo.sharedUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v2}, Lcom/freeme/pluginmanager/PluginManager;->access$100(Lcom/freeme/pluginmanager/PluginManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v1}, Lcom/freeme/pluginmanager/PluginManager;->access$200(Lcom/freeme/pluginmanager/PluginManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    new-instance v5, Lcom/freeme/pluginmanager/Plugin;

    iget-object v6, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v6}, Lcom/freeme/pluginmanager/PluginManager;->access$200(Lcom/freeme/pluginmanager/PluginManager;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p2, v4}, Lcom/freeme/pluginmanager/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    iget-object v4, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v4}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {p1}, Lcom/freeme/pluginmanager/PluginManager;->access$400(Lcom/freeme/pluginmanager/PluginManager;)Lcom/freeme/pluginmanager/PluginListener;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {p1}, Lcom/freeme/pluginmanager/PluginManager;->access$400(Lcom/freeme/pluginmanager/PluginManager;)Lcom/freeme/pluginmanager/PluginListener;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {p2}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2, v1, v0}, Lcom/freeme/pluginmanager/PluginListener;->onRefreshPlugins(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v1}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v1}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "[FREEME]PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): plugins size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v4}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/pluginmanager/Plugin;

    invoke-virtual {v2}, Lcom/freeme/pluginmanager/Plugin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    const-string p2, "[FREEME]PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): after removed, plugins size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v2}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {p2}, Lcom/freeme/pluginmanager/PluginManager;->access$400(Lcom/freeme/pluginmanager/PluginManager;)Lcom/freeme/pluginmanager/PluginListener;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {p2}, Lcom/freeme/pluginmanager/PluginManager;->access$400(Lcom/freeme/pluginmanager/PluginManager;)Lcom/freeme/pluginmanager/PluginListener;

    move-result-object p2

    iget-object v1, p0, Lcom/freeme/pluginmanager/PluginManager$1;->this$0:Lcom/freeme/pluginmanager/PluginManager;

    invoke-static {v1}, Lcom/freeme/pluginmanager/PluginManager;->access$300(Lcom/freeme/pluginmanager/PluginManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1, v0, p1}, Lcom/freeme/pluginmanager/PluginListener;->onRefreshPlugins(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    return-void
.end method
