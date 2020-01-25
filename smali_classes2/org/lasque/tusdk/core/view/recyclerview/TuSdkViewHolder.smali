.class public Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$ViewHolderClickListener;,
        Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        "Lorg/lasque/tusdk/core/view/TuSdkViewInterface;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$ViewHolderClickListener;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$ViewHolderClickListener;-><init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->viewNeedRest()V

    return-void
.end method

.method public static create(Landroid/view/View;)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemClickListener()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    return-object v0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;->getModel()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadView()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->loadView()V

    :cond_0
    return-void
.end method

.method protected onViewHolderItemClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;->onViewHolderItemClick(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V

    return-void
.end method

.method public setItemClickListener(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->a:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setModel(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->viewNeedRest()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p2, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;->setModel(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->getPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;->onCellSelected(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;->onCellDeselected()V

    :cond_3
    :goto_1
    return-void
.end method

.method public viewDidLoad()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->viewDidLoad()V

    :cond_0
    return-void
.end method

.method public viewNeedRest()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->viewNeedRest()V

    :cond_0
    return-void
.end method

.method public viewWillDestory()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->viewWillDestory()V

    :cond_0
    return-void
.end method
