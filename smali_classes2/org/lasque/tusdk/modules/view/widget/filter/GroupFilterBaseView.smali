.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->g:Z

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->l:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->g:Z

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->l:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->g:Z

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->l:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    return-void
.end method


# virtual methods
.method protected configGroupFilterBar(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V

    iget-object p2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->l:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    invoke-interface {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;)V

    return-void
.end method

.method public exitRemoveState()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->exitRemoveState()V

    return-void
.end method

.method public getFilterBarHeight()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->f:I

    return v0
.end method

.method public getFilterTableCellLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->e:I

    return v0
.end method

.method public abstract getFilterTitleView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewInterface;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getGroupFilterBar()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;",
            ">()TT;"
        }
    .end annotation
.end method

.method public getGroupFilterCellWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->c:I

    return v0
.end method

.method public getGroupTableCellLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->d:I

    return v0
.end method

.method public getOnlineFragmentClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->i:Ljava/lang/Class;

    return-object v0
.end method

.method public isDisplaySubtitles()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->k:Z

    return v0
.end method

.method public isEnableFilterConfig()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->b:Z

    return v0
.end method

.method public isEnableHistory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->j:Z

    return v0
.end method

.method public isEnableNormalFilter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->g:Z

    return v0
.end method

.method public isEnableOnlineFilter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->h:Z

    return v0
.end method

.method public isStateHidden()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->a:Z

    return v0
.end method

.method public loadFilters()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->loadFilters()V

    :cond_0
    return-void
.end method

.method public loadView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getFilterTitleView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method protected notifyTitle(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getFilterTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->isDisplaySubtitles()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getFilterTitleView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewInterface;

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/FilterSubtitleViewInterface;->setFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyTitle(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->notifyTitle(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract onDispatchGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public setAutoSelectGroupDefaultFilter(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setAutoSelectGroupDefaultFilter(Z)V

    :cond_0
    return-void
.end method

.method public abstract setDefaultShowState(Z)V
.end method

.method public setDisplaySubtitles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->k:Z

    return-void
.end method

.method public setEnableFilterConfig(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->b:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setEnableFilterConfig(Z)V

    return-void
.end method

.method public setEnableHistory(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->j:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setEnableHistory(Z)V

    return-void
.end method

.method public setEnableNormalFilter(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->g:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setEnableNormalFilter(Z)V

    return-void
.end method

.method public setEnableOnlineFilter(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->h:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setEnableOnlineFilter(Z)V

    return-void
.end method

.method public setFilterBarHeight(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->f:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getFilterBarHeight()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getFilterBarHeight()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public setFilterGroup(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setFilterGroup(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setFilterTableCellLayoutId(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->e:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getFilterTableCellLayoutId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setFilterTableCellLayoutId(I)V

    :cond_0
    return-void
.end method

.method public setGroupFilterCellWidth(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->c:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterCellWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setGroupFilterCellWidth(I)V

    :cond_0
    return-void
.end method

.method public setGroupTableCellLayoutId(I)V
    .locals 1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->d:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupTableCellLayoutId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setGroupTableCellLayoutId(I)V

    :cond_0
    return-void
.end method

.method public setOnlineFragmentClazz(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->i:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setOnlineFragmentClazz(Ljava/lang/Class;)V

    return-void
.end method

.method public setRenderFilterThumb(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setRenderFilterThumb(Z)V

    :cond_0
    return-void
.end method

.method public setSaveLastFilter(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setSaveLastFilter(Z)V

    :cond_0
    return-void
.end method

.method public setStateHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->a:Z

    return-void
.end method

.method public setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->f:I

    if-lez v1, :cond_1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_1
    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->c:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :goto_0
    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;->getGroupFilterBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;->setThumbImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
