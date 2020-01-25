.class public Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->c:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->a:I

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemClickListener()Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->d:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->getModeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
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

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->c:I

    return v0
.end method

.method public getViewLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->a:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->onBindViewHolder(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->setModel(Ljava/lang/Object;I)V

    iget p2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->c:I

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;"
        }
    .end annotation

    iget p2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->a:I

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->create(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->d:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->setItemClickListener(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->onViewAttachedToWindow(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->c:I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->onViewRecycled(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->viewWillDestory()V

    return-void
.end method

.method public setItemClickListener(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->d:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder$TuSdkViewHolderItemClickListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->b:Ljava/util/List;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->c:I

    return-void
.end method

.method public setViewLayoutId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->a:I

    return-void
.end method
