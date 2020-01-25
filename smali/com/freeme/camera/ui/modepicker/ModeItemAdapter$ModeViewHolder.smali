.class Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ModeItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeViewHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mModeView:Landroid/view/View;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->this$0:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mModeView:Landroid/view/View;

    const p1, 0x7f0901d9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mTextView:Landroid/widget/TextView;

    const p1, 0x7f090101

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->this$0:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-static {p1}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->access$000(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;)Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;->onItemCLicked(Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->this$0:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    iget-object v0, v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->access$102(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: mode name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->this$0:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-static {v1}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->access$100(Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$ModeViewHolder;->this$0:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
