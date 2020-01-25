.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListView;
.super Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView<",
        "Ljava/lang/String;",
        "Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCellLayoutId()I
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView;->getCellLayoutId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListView;->setCellLayoutId(I)V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuArrayListView;->getCellLayoutId()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic onArrayListViewBinded(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListView;->onArrayListViewBinded(Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    return-void
.end method

.method protected onArrayListViewBinded(Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onArrayListViewCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListView;->onArrayListViewCreated(Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    return-void
.end method

.method protected onArrayListViewCreated(Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .locals 0

    return-void
.end method
