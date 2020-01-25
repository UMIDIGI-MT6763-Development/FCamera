.class public Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->initManager()V

    return-void
.end method


# virtual methods
.method protected initManager()V
    .locals 0

    return-void
.end method

.method public selectedPosition(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;->onCellSelected(I)V

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;->onCellDeselected()V

    :cond_2
    :goto_0
    return-void
.end method
