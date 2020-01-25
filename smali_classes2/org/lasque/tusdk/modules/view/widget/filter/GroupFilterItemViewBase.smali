.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;
.implements Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout<",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
        ">;",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;",
        "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a:Z

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->cancel(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(J)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a:Z

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->e:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a:Z

    return-void
.end method


# virtual methods
.method protected bindModel()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase$2;->a:[I

    iget-object v2, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelectedIcon(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->handleTypeOnlie(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelectedIcon(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->handleTypeHistory(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->isCameraAction()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelectedIcon(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->handleTypeOrgin(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->isCameraAction()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean v1, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelectedIcon(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->handleTypeFilter(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelectedIcon(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->handleTypeGroup(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-object v0
.end method

.method public getFilterTask()Lorg/lasque/tusdk/core/task/FilterTaskInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    return-object v0
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

.method protected handleBlockView(II)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method protected handleTypeFilter(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->loadFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handleTypeGroup(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v2

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-virtual {v2, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroupDefaultFilterCode(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->loadGroupDefaultFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract handleTypeHistory(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V
.end method

.method protected abstract handleTypeOnlie(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V
.end method

.method protected handleTypeOrgin(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->isRenderFilterThumb()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "Normal"

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isActivating()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a:Z

    return v0
.end method

.method public isCameraAction()Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplaySelectionIcon()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->c:Z

    return v0
.end method

.method public isRenderFilterThumb()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->isRenderFilterThumb()Z

    move-result v0

    return v0
.end method

.method public onCellDeselected()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelected(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->stopActivating()V

    return-void
.end method

.method public onCellSelected(I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelected(Z)V

    return-void
.end method

.method public setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-void
.end method

.method public setDisplaySelectionIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->c:Z

    return-void
.end method

.method public setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    return-void
.end method

.method protected abstract setSelectedIcon(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Z)V
.end method

.method public stopActivating()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a()V

    return-void
.end method

.method public viewNeedRest()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;->viewNeedRest()V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->setSelected(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->d:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->cancelLoadImage(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->cancelLoadImage(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public waitInActivate(J)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->a(J)V

    return-void
.end method
