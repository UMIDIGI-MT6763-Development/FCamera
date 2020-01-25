.class public Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;
.super Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView<",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;",
        ">;",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;"
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field private b:Z

.field private c:I

.field private d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

.field private e:Lorg/lasque/tusdk/core/task/FilterTaskInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-object v0
.end method

.method public getGroupDelegate()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    return-object v0
.end method

.method public getGroupFilterCellWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->c:I

    return v0
.end method

.method public isDisplaySelectionIcon()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->b:Z

    return v0
.end method

.method public loadView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView;->loadView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->setHasFixedSize(Z)V

    return-void
.end method

.method protected bridge synthetic onViewBinded(Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->onViewBinded(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V

    return-void
.end method

.method protected onViewBinded(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onViewCreated(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 0

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->onViewCreated(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method protected onViewCreated(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->isDisplaySelectionIcon()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setDisplaySelectionIcon(Z)V

    iget-object p2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->e:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->getGroupFilterCellWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->getGroupFilterCellWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setWidth(I)V

    :cond_0
    instance-of p2, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->getGroupDelegate()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->setDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;)V

    :cond_1
    return-void
.end method

.method public setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-void
.end method

.method public setDisplaySelectionIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->b:Z

    return-void
.end method

.method public setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->e:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    return-void
.end method

.method public setGroupDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    return-void
.end method

.method public setGroupFilterCellWidth(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableView;->c:I

    return-void
.end method
