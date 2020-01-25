.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;
.super Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;,
        Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

.field private b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected canHiddenRemoveFlag()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->isDownload:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-boolean v0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->isInActingType:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected cocListener()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;

    return-object v0
.end method

.method protected abstract dispatcherViewClick(Landroid/view/View;)V
.end method

.method public getDelegate()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    return-object v0
.end method

.method protected isInActingType()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-boolean v0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->isInActingType:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->setLongClickable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->cocListener()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$OnClickOrLongClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method
