.class Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$3;
.super Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;
.source "DCPluginPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->requestDownloadPlugin([Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Landroid/content/Context;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-direct {p0, p2, p3}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;-><init>(Landroid/content/Context;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->getPluginItem()Lcom/freeme/elementscenter/dc/data/PluginItem;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, v0, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, v0, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    :goto_0
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$200(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
