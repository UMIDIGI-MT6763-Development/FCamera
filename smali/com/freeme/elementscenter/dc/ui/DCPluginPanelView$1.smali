.class Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;
.super Lcom/freeme/elementscenter/dc/data/PluginOnlineData;
.source "DCPluginPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->requestPluginOnlineData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/data/PluginOnlineData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/PluginItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    move-result-object v0

    iget v0, v0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginVersionCode:I

    sget v1, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->sReponsePluginVersionCode:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    move-result-object v0

    const-string v1, "pluginVersionCode"

    sget v2, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->sReponsePluginVersionCode:I

    invoke-virtual {v0, v1, v2}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->saveVersionToPreference(Ljava/lang/String;I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getBannerRequestSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->showViewByStatus(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/dc/data/PluginItem;

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v2, v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$100(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Lcom/freeme/elementscenter/dc/data/PluginItem;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$200(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->setItemList(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/freeme/elementscenter/ECMainActivity;->sCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/data/ECUtil;->pluginItemToJsonStr(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/freeme/elementscenter/ECMainActivity;->sCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/data/ECUtil;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->showViewByStatus(I)V

    return-void

    :cond_4
    return-void
.end method
