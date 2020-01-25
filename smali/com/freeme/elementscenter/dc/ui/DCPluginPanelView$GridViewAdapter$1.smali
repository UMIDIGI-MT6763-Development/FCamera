.class Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$1;->this$1:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
