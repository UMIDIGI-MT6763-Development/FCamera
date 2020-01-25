.class public Lcom/freeme/elementscenter/ui/ECResourceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ECResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsChildMode:Z

.field private mIsEditMode:Z

.field private mItemData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailH:I

.field private mThumbnailW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->elements_center_thumbnail_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mThumbnailW:I

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/freeme/elementscenter/R$dimen;->elements_center_thumbnail_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mThumbnailH:I

    return-void
.end method

.method private updateItemData(Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mItemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mItemData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mContext:Landroid/content/Context;

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

    iget-object v1, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mIsEditMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mMarkedList:Ljava/util/List;

    iget-object p2, p2, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mItemData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mItemData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;-><init>()V

    iget-object p3, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/freeme/elementscenter/R$layout;->ec_manager_edit:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/freeme/elementscenter/R$id;->thumbnail:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    sget v0, Lcom/freeme/elementscenter/R$id;->ec_check:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p2, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->updateItemData(Lcom/freeme/elementscenter/ui/ECResourceAdapter$ViewHolder;I)V

    return-object p3
.end method

.method public setDatas(Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mItemData:Ljava/util/List;

    iput-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mMarkedList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->mIsEditMode:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->notifyDataSetChanged()V

    return-void
.end method
