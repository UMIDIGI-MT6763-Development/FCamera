.class Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ECItemDetailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$000(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$100(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$200(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$000(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$200(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$100(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$000(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$200(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$302(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;I)I

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {p1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$100(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$300(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_item_imageview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;->this$0:Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->access$400(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method
