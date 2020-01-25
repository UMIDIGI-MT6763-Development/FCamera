.class Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ModeItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;,
        Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;,
        Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mClickedListener:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;

.field private mCurrentModeName:Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "Normal"

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mClickedListener:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;)Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mClickedListener:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mCurrentModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    sget-object p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->ITEM_TYPE_IMAGE:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ITEM_TYPE;->ordinal()I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    instance-of v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;

    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v1, v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mModeView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v1, v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder: mode name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v2, v2, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v0, v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v0, v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v1, v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v0, v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mUnselectedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v1, v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mUnselectedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0801be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p1, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    new-instance p2, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;-><init>(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mModes:Ljava/util/List;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateCurrentModeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method
