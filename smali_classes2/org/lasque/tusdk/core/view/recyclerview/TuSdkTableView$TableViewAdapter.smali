.class public Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;
.super Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TableViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    invoke-direct {p0, p2, p3}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->onBindViewHolder(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;I)V

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

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->onBindViewHolder(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;I)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    iget-object p1, p1, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->onViewBinded(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder<",
            "TT;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;

    move-result-object v0

    iget-object v1, v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TableViewAdapter;->a:Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

    iget-object v2, v0, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->onViewCreated(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :cond_0
    return-object v0
.end method
