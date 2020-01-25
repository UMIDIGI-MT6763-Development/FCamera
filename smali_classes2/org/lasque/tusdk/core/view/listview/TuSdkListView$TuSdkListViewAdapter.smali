.class public Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TuSdkListViewAdapter"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;


# direct methods
.method protected constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getIndexPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getIndexPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->createViewFromResource(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->viewTypes()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
