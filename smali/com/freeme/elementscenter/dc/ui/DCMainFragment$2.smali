.class Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;
.super Lcom/freeme/elementscenter/dc/data/AdvertiseOnlineData;
.source "DCMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->requestAdverOnlineData()V
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

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/data/AdvertiseOnlineData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/AdvertiseItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$000(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$100(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->sReponseAdVersionCode:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    const-string v1, "adVersionCode"

    sget v3, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->sReponseAdVersionCode:I

    invoke-virtual {v0, v1, v3}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->saveVersionToPreference(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$300(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0, v2}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$202(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;Z)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/dc/data/AdvertiseItem;

    new-instance v3, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;

    iget-object v4, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-virtual {v4}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-virtual {v5}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Lcom/freeme/elementscenter/dc/data/AdvertiseItem;->adverUrl:Ljava/lang/String;

    new-instance v5, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2$1;

    invoke-direct {v5, p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2$1;-><init>(Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget v5, Lcom/freeme/elementscenter/R$drawable;->banner_default_bg:I

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v1}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$300(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    move-result-object v1

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$300(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->setDataReady(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$300(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->startAutoScroll()V

    const-string v0, "advertise"

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/data/ECUtil;->advertiseItemToJsonStr(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "advertise"

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/data/ECUtil;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$202(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;Z)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;->this$0:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-static {p1, v2}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->access$202(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;Z)Z

    return-void
.end method
