.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkListView;"
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

.field private c:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView<",
            "TT;TV;>.Array",
            "ListDataSource;"
        }
    .end annotation
.end field

.field private d:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView<",
            "TT;TV;>.Array",
            "ListViewDeleagte;"
        }
    .end annotation
.end field

.field private e:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getCellLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->a:I

    return v0
.end method

.method public getModeItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
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

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->b:Ljava/util/List;

    return-object v0
.end method

.method protected abstract onArrayListViewBinded(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onArrayListViewCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ")V"
        }
    .end annotation
.end method

.method public setCellLayoutId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->a:I

    return-void
.end method

.method public setItemClickListener(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener<",
            "TT;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->b:Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->setDataSource(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->setDeleagte(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->refreshIndexPaths(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->reloadData()V

    return-void
.end method
