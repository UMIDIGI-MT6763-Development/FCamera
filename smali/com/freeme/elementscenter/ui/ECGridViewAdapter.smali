.class public Lcom/freeme/elementscenter/ui/ECGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ECGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->elements_center_thumbnail_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->elements_center_thumbnail_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    return-void
.end method

.method private getHolder(Ljava/lang/String;)Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mRoot:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mRoot:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mRoot:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    iget-object v3, v2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v3, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v3, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private handleDownloadOnclick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->startDownload(Landroid/content/Context;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method

.method private handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    iget v0, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mPrompt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_download_ok:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_download:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

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

.method private handleThumbnailOnclick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    new-instance v0, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "itemDataList"

    iget-object v3, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "code"

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/ui/ECItemDetailInfo;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->showDialog(Landroid/app/Activity;Landroid/app/DialogFragment;)V

    return-void
.end method

.method private handleTouchEvent(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/elementscenter/ui/ECItemData;

    iput-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateViewHolderData(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$drawable;->ec_default_thumbnail:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/freeme/elementscenter/R$layout;->ec_gridview_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail_cover:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    sget v0, Lcom/freeme/elementscenter/R$id;->indicator:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_progress_root:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download_pb:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download_prompt:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->handleTouchEvent(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;I)V

    invoke-direct {p0, p2, p1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->updateViewHolderData(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;I)V

    return-object p3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->thumbnail_cover:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->handleThumbnailOnclick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/freeme/elementscenter/R$id;->ec_download:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->handleDownloadOnclick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->getHolder(Ljava/lang/String;)Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECGridViewAdapter$ViewHolder;Lcom/freeme/elementscenter/ui/ECItemData;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->unregisterDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    return-void
.end method

.method public resume(Landroid/widget/GridView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mRoot:Landroid/widget/GridView;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-virtual {p1, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->registerDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    return-void
.end method

.method public setItemDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->mItemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
