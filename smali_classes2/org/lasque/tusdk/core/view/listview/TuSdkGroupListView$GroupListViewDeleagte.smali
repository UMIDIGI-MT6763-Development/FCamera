.class Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupListViewDeleagte"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)V

    return-void
.end method


# virtual methods
.method public onListViewItemClick(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget p1, p3, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->getDataSource()Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;->onGroupItemClick(Ljava/lang/Object;Ljava/lang/Object;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    goto :goto_0

    :cond_2
    iget p1, p3, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->b(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->b(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->getDataSource()Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;->onGroupHeaderClick(Ljava/lang/Object;Ljava/lang/Object;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onListViewItemCreate(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget p1, p2, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->getCellLayoutId()I

    move-result v0

    invoke-static {p1, v0, p3}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {p3, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->onGroupListViewCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    goto :goto_0

    :cond_0
    iget p1, p2, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->getHeaderLayoutId()I

    move-result v0

    invoke-static {p1, v0, p3}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;

    invoke-virtual {p3, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->onGroupListHeaderCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
