.class public abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;
.implements Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface$TuFilterOnlineFragmentDelegate;
.implements Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;
.implements Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

.field private c:J

.field private d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->j:Z

    const/16 p1, 0x14

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->j:Z

    const/16 p1, 0x14

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->j:Z

    const/16 p1, 0x14

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->m:I

    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-ne v1, v2, :cond_1

    :cond_2
    return v0
.end method

.method private a(Ljava/util/List;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;J)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v2, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    return v1

    :cond_2
    return v0
.end method

.method private a([I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->d()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    add-int/lit8 v2, v2, 0x1

    iget-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v6, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_3

    aput v2, p1, v7

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_2

    iget-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v6, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v4, v4, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    iget-wide v8, v1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    aput v2, p1, v7

    iput-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean v4, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_5
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setModeList(Ljava/util/List;)V

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-interface {v0, v3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setSelectedPosition(I)V

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->scrollToPosition(I)V

    return-void
.end method

.method private a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getModeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Ljava/util/List;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->onGroupItemSeleced(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    add-int/lit8 p1, p1, -0x2

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->scrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-direct {p0, v1, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Ljava/util/List;J)I

    move-result v2

    if-gez v2, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    iget-wide v1, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroupNameKey(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "This filter group [ %s ] could not be used in Camere component"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setModeList(Ljava/util/List;)V

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->c:J

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iput-wide v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->c:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "lsq_lastfilter_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(J)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V
    .locals 0

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p1, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->changeSelectedPosition(I)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;II)V
    .locals 11

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->changeSelectedPosition(I)V

    iget-object p2, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHistory:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    if-ne p2, p3, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->e()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-wide v3, v0

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeGroup:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-ne p2, p3, :cond_2

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p2

    iget-object p3, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    invoke-virtual {p2, p3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroupFilters(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/util/List;

    move-result-object p2

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v3, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->defaultFilterId:J

    move-object p1, p2

    goto :goto_0

    :cond_2
    move-wide v3, v0

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHolder:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    const/4 v5, 0x0

    if-eqz p3, :cond_4

    iget-wide v3, p3, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iget-boolean p3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->g:Z

    iput-object v2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    goto :goto_1

    :cond_4
    cmp-long p3, v3, v0

    if-lez p3, :cond_5

    iget-boolean p3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->h:Z

    goto :goto_1

    :cond_5
    move p3, v5

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v5

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean v7, v6, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->disableRuntime:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    move-result-object v7

    sget-object v8, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v7, v6, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iget-wide v9, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->c:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_7
    iget-wide v7, v6, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v6

    :cond_8
    invoke-static {v6}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->createWithFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    iget-object v6, v6, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    invoke-interface {v7, v6}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->appendFilterCode(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {p1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->start()V

    if-lez v0, :cond_a

    const/4 p3, 0x1

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_d

    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->h:Z

    if-eqz p1, :cond_c

    :cond_b
    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_c
    invoke-direct {p0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_d
    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setModeList(Ljava/util/List;)V

    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->h:Z

    if-nez p1, :cond_f

    if-eqz p3, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setSelectedPosition(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p1, v5}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->scrollToPosition(I)V

    goto :goto_5

    :cond_f
    :goto_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setSelectedPosition(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p1, v0, p4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->scrollToPositionWithOffset(II)V

    :goto_5
    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getModeList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getModeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iput-boolean p1, v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->isInActingType:Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->reloadData()V

    :cond_2
    :goto_1
    return-void
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->isEnableHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeHistory:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->isEnableNormalFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-boolean v3, v2, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->disableRuntime:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    move-result-object v3

    sget-object v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->createWithGroup(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroupDefaultFilterCode(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->appendFilterCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->start()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->isEnableOnlineFilter()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method private b(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getModeList()Ljava/util/List;

    move-result-object v2

    iget-wide v3, p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    invoke-direct {p0, v2, v3, v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Ljava/util/List;J)I

    move-result p1

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getSelectedPosition()I

    move-result v2

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setModeList(Ljava/util/List;)V

    invoke-interface {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-le v2, p1, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Ljava/util/List;)I

    move-result v2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)Z

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_3
    :goto_1
    if-le v2, v3, :cond_4

    const/4 p1, 0x0

    invoke-interface {v0, v2, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setSelectedPosition(IZ)V

    :cond_4
    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->code:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->l:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->m:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->m:I

    if-le p1, v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    :cond_3
    const-string p1, "lsq_filter_history_%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCacheObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private b(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->s:I

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->getScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowLeft(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->s:I

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;II)V

    iget p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->s:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->showFilterTable(IZ)V

    return-void
.end method

.method private c()V
    .locals 9

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->showViewIn(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->showViewIn(Landroid/view/View;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->g:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->d()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->isEnableNormalFilter()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-static {v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->create(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    iget-boolean v5, v4, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->disableRuntime:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    move-result-object v5

    sget-object v6, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionCamera:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    iget-wide v5, v4, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    iget-wide v7, v3, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-boolean v5, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_5
    invoke-direct {p0, v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    :cond_6
    invoke-static {v4}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->createWithFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->start()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setModeList(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setSelectedPosition(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->scrollToPosition(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method private d()Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "lsq_lastfilter_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "lsq_filter_history_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCacheObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->m:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->n:Ljava/util/List;

    return-object v0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->t:Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v3, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;->setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;->setDelegate(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface$TuFilterOnlineFragmentDelegate;)V

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->t:Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;->presentModalNavigationActivity(Landroid/support/v4/app/Fragment;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "You set OnlineFragmentClazz(%s) is not allow TuFilterOnlineFragmentInterface(%s) or Fragment(%s) in %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v1, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    const-class v2, Landroid/support/v4/app/Fragment;

    iget-object v4, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_1
    const-string v0, "You need set OnlineFragmentClazz: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->isInActingType:Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public exitRemoveState()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Z)V

    return-void
.end method

.method public getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    return-object v0
.end method

.method public abstract getFilterTable()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getGroupTable()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;",
            ">()TT;"
        }
    .end annotation
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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    return-object v0
.end method

.method protected handleBackAction()V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->s:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->showFilterTable(IZ)V

    return-void
.end method

.method protected initView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->initView()V

    new-instance v0, Lorg/lasque/tusdk/core/task/FiltersTempTask;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/task/FiltersTempTask;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    return-void
.end method

.method public isAutoSelectGroupDefaultFilter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->h:Z

    return v0
.end method

.method public isEnableFilterConfig()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->i:Z

    return v0
.end method

.method public isEnableHistory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->l:Z

    return v0
.end method

.method public isEnableNormalFilter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->j:Z

    return v0
.end method

.method public final isEnableOnlineFilter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->k:Z

    return v0
.end method

.method public isLoadFilters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->p:Z

    return v0
.end method

.method public isRenderFilterThumb()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->isRenderFilterThumb()Z

    move-result v0

    return v0
.end method

.method public isSaveLastFilter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    return v0
.end method

.method public loadFilters()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->e()Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->e:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->q:Z

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->q:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a()V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->appenDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->c()V

    :goto_2
    iput-boolean v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->p:Z

    return-void
.end method

.method public loadFilters(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->g:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->loadFilters()V

    return-void
.end method

.method protected notifyDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->createWithFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)Z

    return-void
.end method

.method protected notifyDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0, p0, p2, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;->onGroupFilterSelected(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;)Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->t:Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->removeDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->resetQueues()V

    return-void
.end method

.method protected onFilterItemSeleced(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->changeSelectedPosition(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {p3, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->smoothScrollByCenter(Landroid/view/View;)V

    :cond_1
    iget-object p2, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterOption:Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-void
.end method

.method public onFilterPackageStatusChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->e:Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->b:[I

    invoke-virtual {p3}, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onGroupFilterGroupViewLongClick(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Z)V

    return-void
.end method

.method public onGroupFilterGroupViewRemove(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->filterGroup:Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;->groupId:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->removeDownloadWithIdt(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onGroupItemSeleced(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->isInActingType:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->exitRemoveState()V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->notifyDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;)Z

    move-result v0

    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->TypeFilter:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$3;->a:[I

    iget-object v1, p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;->type:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem$GroupFilterItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->b(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTuFilterOnlineFragmentSelected(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentInterface;J)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/lasque/tusdk/core/activity/TuSdkFragment;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/activity/TuSdkFragment;->dismissActivityWithAnim()V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;

    invoke-direct {v0, p0, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$2;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;J)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V

    :cond_1
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->t:Lorg/lasque/tusdk/modules/components/TuSdkHelperComponent;

    return-void
.end method

.method public setAutoSelectGroupDefaultFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->h:Z

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->d:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarInterface$GroupFilterBarDelegate;

    return-void
.end method

.method public setEnableFilterConfig(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->i:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setDisplaySelectionIcon(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setDisplaySelectionIcon(Z)V

    :cond_1
    return-void
.end method

.method public setEnableHistory(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->l:Z

    return-void
.end method

.method public setEnableNormalFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->j:Z

    return-void
.end method

.method public final setEnableOnlineFilter(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->k:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;->setGroupDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;)V

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

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->e:Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->setFilerNames(Ljava/util/List;)V

    return-void
.end method

.method public setOnlineFragmentClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->r:Ljava/lang/Class;

    return-void
.end method

.method public setRenderFilterThumb(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->setRenderFilterThumb(Z)V

    return-void
.end method

.method public setSaveLastFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->f:Z

    return-void
.end method

.method public setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->o:Lorg/lasque/tusdk/core/task/FilterTaskInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/task/FilterTaskInterface;->setInputImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected showFilterTable(IZ)V
    .locals 7

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->showViewIn(Landroid/view/View;Z)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p2

    int-to-float p1, p1

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    move v6, p2

    move-object p2, p1

    move p1, v6

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p2, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    new-instance v2, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$1;

    invoke-direct {v2, p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getGroupTable()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterBarBase;->getFilterTable()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method
