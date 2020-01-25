.class Lcom/freeme/elementscenter/ui/ECPoseMode$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ECPoseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/ui/ECPoseMode;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/ui/ECPoseMode;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/ui/ECPoseMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECPoseMode$1;->this$0:Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/freeme/elementscenter/ui/ECPoseMode$1;->this$0:Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-static {p3}, Lcom/freeme/elementscenter/ui/ECPoseMode;->access$100(Lcom/freeme/elementscenter/ui/ECPoseMode;)Lcom/freeme/elementscenter/dc/ui/TabWidget;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->selectorTanslationX(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPoseMode$1;->this$0:Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECPoseMode;->access$000(Lcom/freeme/elementscenter/ui/ECPoseMode;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPoseMode$1;->this$0:Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECPoseMode;->access$100(Lcom/freeme/elementscenter/ui/ECPoseMode;)Lcom/freeme/elementscenter/dc/ui/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->selectorTanslationX(IF)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPoseMode$1;->this$0:Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/ui/ECPoseMode;->access$002(Lcom/freeme/elementscenter/ui/ECPoseMode;I)I

    return-void
.end method
