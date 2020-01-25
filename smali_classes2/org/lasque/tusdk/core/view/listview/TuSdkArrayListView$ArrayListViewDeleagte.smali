.class Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayListViewDeleagte"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)V

    return-void
.end method


# virtual methods
.method public onListViewItemClick(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .locals 2

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->a(Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    iget v1, p3, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getModeItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewItemClickListener;->onArrayListViewItemClick(Ljava/lang/Object;Ljava/lang/Object;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onListViewItemCreate(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->getCellLayoutId()I

    move-result v0

    invoke-static {p1, v0, p3}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView$ArrayListViewDeleagte;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;

    invoke-virtual {p3, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkArrayListView;->onArrayListViewCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    return-object p1
.end method
