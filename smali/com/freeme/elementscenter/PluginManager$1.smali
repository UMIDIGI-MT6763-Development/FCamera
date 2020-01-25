.class Lcom/freeme/elementscenter/PluginManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/PluginManager;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/PluginManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1, p2}, Lcom/freeme/elementscenter/PluginManager;->access$000(Lcom/freeme/elementscenter/PluginManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p2}, Lcom/freeme/elementscenter/PluginManager;->access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/PluginManager;->access$200(Lcom/freeme/elementscenter/PluginManager;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {v0}, Lcom/freeme/elementscenter/PluginManager;->access$300(Lcom/freeme/elementscenter/PluginManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.freeme.camera.shareduserid"

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/freeme/elementscenter/data/ECUtil;->getPluginDownloadPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".delete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".delete"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->deleteFile(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/PluginManager;->access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/PluginManager;->access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".delete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".delete"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/elementscenter/data/ECUtil;->deleteFile(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/PluginManager;->access$000(Lcom/freeme/elementscenter/PluginManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {v0}, Lcom/freeme/elementscenter/PluginManager;->access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/PluginManager;->access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/PluginManager;->access$100(Lcom/freeme/elementscenter/PluginManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/freeme/elementscenter/PluginManager$1;->this$0:Lcom/freeme/elementscenter/PluginManager;

    invoke-static {p1}, Lcom/freeme/elementscenter/PluginManager;->access$200(Lcom/freeme/elementscenter/PluginManager;)V

    return-void

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void

    :cond_9
    :goto_2
    return-void
.end method
