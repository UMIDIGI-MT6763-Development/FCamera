.class Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayListDataSource"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)V

    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->getIndexPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    return-object v0
.end method

.method public getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getModeList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getModeList()Ljava/util/List;

    move-result-object v0

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onViewBinded(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {v0, p2, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->onArrayListViewBinded(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    check-cast p2, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getModeList()Ljava/util/List;

    move-result-object v0

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;->setModel(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public refreshIndexPaths(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getModeList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getModeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    new-instance v3, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    invoke-direct {v3, v1, v2}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->b:Ljava/util/List;

    return-void
.end method

.method public rowCount(I)I
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListDataSource;->count()I

    move-result p1

    return p1
.end method

.method public sectionCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public viewTypes()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
