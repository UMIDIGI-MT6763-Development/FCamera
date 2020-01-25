.class Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewHolderItemClick(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->getModel()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->getPosition()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;->onTableViewItemClick(Ljava/lang/Object;Landroid/view/View;I)V

    :cond_1
    return-void
.end method
