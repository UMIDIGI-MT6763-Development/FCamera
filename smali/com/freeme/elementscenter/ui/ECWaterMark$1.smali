.class Lcom/freeme/elementscenter/ui/ECWaterMark$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ECWaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/ui/ECWaterMark;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/ui/ECWaterMark;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/ui/ECWaterMark;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark$1;->this$0:Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/freeme/elementscenter/ui/ECWaterMark$1;->this$0:Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-static {p3}, Lcom/freeme/elementscenter/ui/ECWaterMark;->access$100(Lcom/freeme/elementscenter/ui/ECWaterMark;)Lcom/freeme/elementscenter/dc/ui/TabWidget;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->selectorTanslationX(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark$1;->this$0:Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->access$000(Lcom/freeme/elementscenter/ui/ECWaterMark;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark$1;->this$0:Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->access$100(Lcom/freeme/elementscenter/ui/ECWaterMark;)Lcom/freeme/elementscenter/dc/ui/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->selectorTanslationX(IF)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark$1;->this$0:Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/ui/ECWaterMark;->access$002(Lcom/freeme/elementscenter/ui/ECWaterMark;I)I

    return-void
.end method
