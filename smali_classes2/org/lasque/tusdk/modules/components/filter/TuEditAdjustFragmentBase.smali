.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    return-void
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract buildActionButton(Ljava/lang/String;I)Landroid/view/View;
.end method

.method protected buildActionButtons()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->buildActionButton(Ljava/lang/String;I)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getCurrentAction()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    return v0
.end method

.method protected handleAction(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;->setParams(Ljava/util/List;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->setConfigViewShowState(Z)V

    return-void
.end method

.method protected handleConfigCompeleteButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->setConfigViewShowState(Z)V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editAdjustFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadView(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->buildActionButtons()V

    return-void
.end method

.method public onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V
    .locals 0

    iget p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V

    return-void
.end method

.method public onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V
    .locals 0

    iget p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V

    return-void
.end method

.method public readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F
    .locals 0

    iget p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditAdjustFragmentBase;->a:I

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F

    move-result p1

    return p1
.end method

.method protected abstract setConfigViewShowState(Z)V
.end method
