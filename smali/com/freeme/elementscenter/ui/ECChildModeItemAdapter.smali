.class public Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ECChildModeItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;
.implements Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

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

.field private mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

.field private mRoot:Landroid/widget/GridView;

.field private mThumbnailH:I

.field private mThumbnailW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mItemDataList:Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->elements_center_thumbnail_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mThumbnailW:I

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->elements_center_thumbnail_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mThumbnailH:I

    new-instance p1, Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-direct {p1}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;-><init>()V

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    return-void
.end method

.method private getHolder(Ljava/lang/String;)Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mRoot:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mRoot:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mRoot:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    iget-object v3, v2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v3, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

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

    check-cast p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {}, Lcom/freeme/elementscenter/data/ECDownloadManager;->getInstance()Lcom/freeme/elementscenter/data/ECDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/elementscenter/data/ECDownloadManager;->startDownload(Landroid/content/Context;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method

.method private handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 3

    iget v0, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mPrompt:Landroid/widget/TextView;

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
    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_download_ok:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_download:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

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
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    iget-object v0, v0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v1, p1, p0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->setPlayerStatusListener(Landroid/view/View;Lcom/freeme/elementscenter/data/ECOnlinePlayer$OnlinePlayerStatusListener;)V

    iget v1, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->getAudioUrlByItemData(Lcom/freeme/elementscenter/ui/ECItemData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v1, v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->pause()V

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->onPlayCompletion(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v1, v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->playByUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/freeme/elementscenter/ui/ECItemData;->mPrimitiveUrl:Ljava/lang/String;

    sget v1, Lcom/freeme/elementscenter/R$id;->thumbnail_loading:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->reset()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v4, v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->isPlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->pause()V

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->onPlayCompletion(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    invoke-virtual {v1, v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->playByUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    sget v1, Lcom/freeme/elementscenter/R$id;->thumbnail_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->onPlayCompletion(Landroid/view/View;)V

    :cond_5
    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mCurrView:Landroid/view/View;

    return-void
.end method

.method private handleTouchEvent(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/elementscenter/ui/ECItemData;

    iput-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mData:Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateViewHolderData(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mContext:Landroid/content/Context;

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

    iget-object v1, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;Lcom/freeme/elementscenter/ui/ECItemData;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mItemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mItemDataList:Ljava/util/List;

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

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mItemDataList:Ljava/util/List;

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

    new-instance p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/freeme/elementscenter/R$layout;->ec_childmode_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail_cover:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mThumbnailCover:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail_loading:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mLoading:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    sget v0, Lcom/freeme/elementscenter/R$id;->indicator:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mIndicator:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mDownloadBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_progress_root:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mProgressRoot:Landroid/view/View;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download_pb:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_download_prompt:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;->mPrompt:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->handleTouchEvent(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;I)V

    invoke-direct {p0, p2, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->updateViewHolderData(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;I)V

    return-object p3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->thumbnail_cover:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->handleThumbnailOnclick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/freeme/elementscenter/R$id;->ec_download:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->handleDownloadOnclick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataChanged(Lcom/freeme/elementscenter/ui/ECItemData;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->getHolder(Ljava/lang/String;)Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->handleDownloadStatus(Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;Lcom/freeme/elementscenter/ui/ECItemData;)V

    :cond_0
    return-void
.end method

.method public onPlayCompletion(Landroid/view/View;)V
    .locals 3

    const-string v0, "childmode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayCompletion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/freeme/elementscenter/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/freeme/elementscenter/R$drawable;->ec_indicator_audio:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onPlayPrepared(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/freeme/elementscenter/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$anim;->ec_childmode_playing:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/data/ECDownloadManager;->unregisterDownloadDataListener(Lcom/freeme/elementscenter/data/ECDownloadManager$DownloadDataListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mPlayer:Lcom/freeme/elementscenter/data/ECOnlinePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECOnlinePlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v1, Lcom/freeme/elementscenter/R$id;->thumbnail_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->onPlayCompletion(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public resume(Landroid/widget/GridView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mRoot:Landroid/widget/GridView;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mDownloadManager:Lcom/freeme/elementscenter/data/ECDownloadManager;

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

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->mItemDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
