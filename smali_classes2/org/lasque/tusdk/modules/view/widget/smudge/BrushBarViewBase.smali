.class public abstract Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

.field private b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    return-void
.end method

.method private a()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 5

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "lsq_lastbrush_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "lsq_lastbrush_%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected buildBrushItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getEeaserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAction()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    return-object v0
.end method

.method public getBrushGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->c:Ljava/util/List;

    return-object v0
.end method

.method public abstract getTableView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;",
            ">()TT;"
        }
    .end annotation
.end method

.method public isSaveLastBrush()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    return v0
.end method

.method public loadBrushes()V
    .locals 5

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->smudgeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "You are not allowed to use the smudge feature, please see http://tusdk.com"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->c:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getBrushWithCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getEeaserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->buildBrushItems()Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    const/4 v4, 0x1

    if-eq v3, v2, :cond_4

    iget-object v2, v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    const-string v3, "Eraser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    :cond_5
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->getTableView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->getTableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;

    invoke-interface {v2, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;->setModeList(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->getTableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;

    invoke-interface {v2, v0, v4}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;->setSelectedPosition(IZ)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->getTableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;

    invoke-interface {v2, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;->scrollToPosition(I)V

    :cond_6
    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->notifySelectedBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    return-void
.end method

.method public loadView()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->appenDelegate(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;)V

    return-void
.end method

.method protected abstract notifySelectedBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->removeDelegate(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;)V

    return-void
.end method

.method protected abstract refreshBrushDatas()V
.end method

.method public selectBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->getTableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;

    invoke-interface {v0, p3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;->changeSelectedPosition(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->getTableView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;

    invoke-interface {p3, p2}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;->smoothScrollByCenter(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->a(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    :cond_0
    return-void
.end method

.method public setAction(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->b:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;

    return-void
.end method

.method public setBrushGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->c:Ljava/util/List;

    return-void
.end method

.method public setSaveLastBrush(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarViewBase;->d:Z

    return-void
.end method
