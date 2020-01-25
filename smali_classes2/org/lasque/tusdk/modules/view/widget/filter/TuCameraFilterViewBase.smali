.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/TuCameraFilterViewBase;
.super Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBaseView;


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
.method protected abstract getCaptureActivateWaitMillis()J
.end method

.method protected onDispatchGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z
    .locals 4

    iget-object p1, p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/TuCameraFilterViewBase;->notifyTitle(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/TuCameraFilterViewBase;->notifyTitle(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;->isActivating()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;->stopActivating()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/TuCameraFilterViewBase;->getCaptureActivateWaitMillis()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;->waitInActivate(J)V

    return v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p3, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/TuCameraFilterViewBase;->onGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)Z

    move-result p1

    return p1
.end method

.method protected abstract onGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)Z
.end method
