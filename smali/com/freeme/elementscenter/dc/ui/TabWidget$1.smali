.class Lcom/freeme/elementscenter/dc/ui/TabWidget$1;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/TabWidget;->addTab(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/TabWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-static {v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$000(Lcom/freeme/elementscenter/dc/ui/TabWidget;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$100(Lcom/freeme/elementscenter/dc/ui/TabWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-static {v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$000(Lcom/freeme/elementscenter/dc/ui/TabWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$100(Lcom/freeme/elementscenter/dc/ui/TabWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$002(Lcom/freeme/elementscenter/dc/ui/TabWidget;I)I

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$200(Lcom/freeme/elementscenter/dc/ui/TabWidget;)Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;->this$0:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->access$200(Lcom/freeme/elementscenter/dc/ui/TabWidget;)Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method
