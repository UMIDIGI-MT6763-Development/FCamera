.class public abstract Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;
.super Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;,
        Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;"
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:I

.field protected mViewHolderItemClickListener:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    new-instance p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;-><init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->mViewHolderItemClickListener:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    new-instance p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;-><init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->mViewHolderItemClickListener:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    new-instance p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$1;-><init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->mViewHolderItemClickListener:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;

    return-object p0
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getSdkLayoutManager()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getSdkAdapter()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeSelectedPosition(I)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->getSelectedPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setSelectedPosition(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->selectedPosition(IZ)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->selectedPosition(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCellLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->d:I

    return v0
.end method

.method public getItemClickDelegate()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;

    return-object v0
.end method

.method public getModeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->e:Ljava/util/List;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    return v0
.end method

.method public getSdkAdapter()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getCellLayoutId()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->e:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;-><init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;ILjava/util/List;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    iget v1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->mViewHolderItemClickListener:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setItemClickListener(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    return-object v0
.end method

.method public getSdkLayoutManager()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    iget-boolean v3, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->g:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    return v0
.end method

.method public isReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->g:Z

    return v0
.end method

.method protected abstract onViewBinded(Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation
.end method

.method protected abstract onViewCreated(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/view/ViewGroup;",
            "I)V"
        }
    .end annotation
.end method

.method public reloadData()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    instance-of v0, p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setCellLayoutId(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->d:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getCellLayoutId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setViewLayoutId(I)V

    :cond_0
    return-void
.end method

.method public setItemClickDelegate(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate<",
            "TT;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->mViewHolderItemClickListener:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    :goto_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setItemClickListener(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;)V

    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    instance-of v0, p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->e:Ljava/util/List;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setModeList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->g:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->c:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->g:Z

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->setReverseLayout(Z)V

    :cond_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->h:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->setSelectedPosition(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->b:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public smoothScrollByCenter(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowLeft(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowLeft(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowTop(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowTop(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->smoothScrollBy(II)V

    :cond_2
    :goto_0
    return-void
.end method
