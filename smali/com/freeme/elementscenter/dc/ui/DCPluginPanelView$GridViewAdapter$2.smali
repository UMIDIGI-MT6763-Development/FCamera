.class Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;
.super Ljava/lang/Object;
.source "DCPluginPanelView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->handleUninstall(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

.field final synthetic val$item:Lcom/freeme/elementscenter/dc/data/PluginItem;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->this$1:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->val$item:Lcom/freeme/elementscenter/dc/data/PluginItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->val$item:Lcom/freeme/elementscenter/dc/data/PluginItem;

    const/4 v0, 0x4

    iput v0, p2, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->this$1:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    iget-object p2, p2, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$200(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->this$1:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    iget-object p2, p2, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->val$item:Lcom/freeme/elementscenter/dc/data/PluginItem;

    iget-object v0, v0, Lcom/freeme/elementscenter/dc/data/PluginItem;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;->val$item:Lcom/freeme/elementscenter/dc/data/PluginItem;

    invoke-static {p2, v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$600(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
