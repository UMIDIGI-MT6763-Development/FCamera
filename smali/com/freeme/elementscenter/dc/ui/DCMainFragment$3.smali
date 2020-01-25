.class Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "DCMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->initTabAndViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {p3}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$500(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/TabWidget;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->selectorTanslationX(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$400(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$500(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->selectorTanslationX(IF)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$402(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;I)I

    new-instance v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;

    invoke-direct {v0}, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->actionId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionTime:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->extraInfo:I

    const-string v1, ""

    iput-object v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->resName:Ljava/lang/String;

    invoke-static {p1}, Lcom/freeme/elementscenter/provider/StatisticDBData;->getDCECOptionId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    iget-object p1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-virtual {p1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_1
    return-void
.end method
