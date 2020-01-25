.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ":",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface<",
        "TT;>;>",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    new-instance p1, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;-><init>(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    new-instance p1, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;-><init>(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    new-instance p1, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;-><init>(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->b:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->loadView()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected bindModel()V
    .locals 7

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-ge v1, v3, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;->setModel(Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->showViewIn(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getGridDelegate()Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->b:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;

    return-object v0
.end method

.method protected onLayouted()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->setHeight(I)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->onLayouted()V

    return-void
.end method

.method public setGridDelegate(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate<",
            "TT;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->b:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;

    return-void
.end method

.method public viewNeedRest()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->viewNeedRest()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v1

    check-cast v2, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->viewNeedRest()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->showViewIn(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->viewNeedRest()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->viewWillDestory()V

    return-void
.end method
