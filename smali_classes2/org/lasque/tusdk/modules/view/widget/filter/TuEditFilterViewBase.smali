.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;
.super Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final getFilterArg(I)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected handleCancelAction()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->requestRender()V

    return-void
.end method

.method protected onDispatchGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z
    .locals 2

    iget-object p1, p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->notifyTitle(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->onFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->isEnableFilterConfig()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz p1, :cond_1

    iget-object p1, p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->showConfigView(Z)V

    :cond_1
    return v1
.end method

.method protected abstract onFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z
.end method

.method protected requestRender()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->submitFilterParameter()V

    :cond_0
    return-void
.end method

.method protected abstract setConfigViewParams(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final setFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/TuEditFilterViewBase;->setConfigViewParams(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract showConfigView(Z)V
.end method
