.class public Lcom/freeme/elementscenter/ui/ECItemDetailInfo;
.super Landroid/app/DialogFragment;
.source "ECItemDetailInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;
    }
.end annotation


# instance fields
.field private mCurrIndex:I

.field private mDialog:Landroid/app/Dialog;

.field private mDownload:Landroid/widget/Button;

.field private mItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mNext:Landroid/widget/Button;

.field private mPageAdapter:Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPrev:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressRoot:Landroid/view/View;

.field private mPrompt:Landroid/widget/TextView;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPrev:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mNext:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)I
    .locals 0

    iget p0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method

.method private getCurrIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mItemDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mItemDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v2, v2, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private handleButtonNextOnClick()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method private handleButtonPrevOnClick()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method private handleDownloadOnclick()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    iget v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_item_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->startDownload(Landroid/content/Context;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method

.method private handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    iget v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mProgressRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPrompt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_download_ok:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mProgressRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_download:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mProgressRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_progress_root:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mProgressRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_download_pb:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_download_prompt:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPrompt:Landroid/widget/TextView;

    return-void
.end method

.method private initViewPager()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->item_detail_pager:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->previous:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPrev:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->next:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mNext:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_download_btn:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPrev:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDownload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mItemDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$layout;->ec_item_preview:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$id;->ec_item_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mItemDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    iget-object v3, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget v4, Lcom/freeme/elementscenter/R$drawable;->ec_bigimg:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPageAdapter:Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPageAdapter:Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$1;-><init>(Lcom/freeme/elementscenter/ui/ECItemDetailInfo;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    iget v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_item_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->registerDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/freeme/elementscenter/R$id;->previous:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->handleButtonPrevOnClick()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/freeme/elementscenter/R$id;->next:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->handleButtonNextOnClick()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download_btn:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->handleDownloadOnclick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "itemDataList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mItemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getCurrIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$dimen;->ec_item_pageview_w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->ec_item_pageview_h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$style;->ECDialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    sget v0, Lcom/freeme/elementscenter/R$layout;->ec_item_detail_info:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->initProgressBar()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->initViewPager()V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method public onDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    iget v1, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mCurrIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_item_imageview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v1, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    iput v1, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    iput p1, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECItemData;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mViewList:Ljava/util/List;

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->unregisterDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    const-string v0, "childmode"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->mPageAdapter:Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo$ItemPreviewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
