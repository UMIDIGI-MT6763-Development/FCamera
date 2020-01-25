.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;

.field private b:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;

.field private c:I

.field private d:I

.field private e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

.field private f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

.field private l:I

.field private m:Landroid/widget/BaseAdapter;

.field private n:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->initView()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->c:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->viewDidLoad()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->b:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->d:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->d:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    :cond_1
    return-void
.end method

.method private a(F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->updateHeight(F)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->setSelection(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v0, 0x96

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a(F)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->submitState()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;->onListViewRefreshed(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 0

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->b:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;->onListViewLoadedMore(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addInTopHolderView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addInTopHolderView(Landroid/view/View;II)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->addView(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addInTopHolderView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public firstStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->firstStart()V

    :cond_0
    return-void
.end method

.method public getDataIndex(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public getLoadMoreView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    return-object v0
.end method

.method public getPositionForIndex(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public getPullRefreshView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    return-object v0
.end method

.method public getTopHeight()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->l:I

    return v0
.end method

.method public getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->setOrientation(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->loadView()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    return-object v0
.end method

.method public getViewAt(I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getLastVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract initView()V
.end method

.method public listViewAt(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->pointToPosition(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getViewAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method protected onRemoveViewAnimationEnd()V
    .locals 2

    const-string v0, "onRemoveViewAnimationEnd"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->c()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->g:F

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public refreshStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->refreshStart()V

    :cond_0
    return-void
.end method

.method public reloadData()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->reloadData(Z)V

    return-void
.end method

.method public reloadData(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->resetRefresh()V

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->m:Landroid/widget/BaseAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public removeInTopHolderView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewWithAnim(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getViewAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$2;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;)V

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->removeViewAnimtor(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public resetRefresh()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->h:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->refreshEnded()V

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;->setViewShowed(Z)V

    :cond_1
    return-void
.end method

.method public scrollToAdapterPosition(IIZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getPositionForIndex(I)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->scrollToPosition(IIZ)V

    return-void
.end method

.method public scrollToPosition(IIZ)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    if-eqz p3, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-ge p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a(II)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->setSelectionFromTop(II)V

    :goto_1
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a()V

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    instance-of v0, p1, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/BaseAdapter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->m:Landroid/widget/BaseAdapter;

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->j:Z

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setHasMore(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->i:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->f:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;->setViewShowed(Z)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->n:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setRefreshLayoutResId(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->c:I

    iput p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->d:I

    return-void
.end method

.method public setRefreshListener(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->b:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;

    return-void
.end method

.method public setTopDpHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->l:I

    iget p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->l:I

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->setTopHeight(I)V

    return-void
.end method

.method protected setTopHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->setVisiableHeight(I)V

    return-void
.end method

.method public skipToLastTop()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->m:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$1;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$1;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;I)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewInCellTop(ILandroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->getViewAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowTop(Landroid/view/View;)I

    move-result p2

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowTop(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewRefreshListener;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->b:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView$TuSdkListViewLoadMoreListener;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->viewWillDestory(Landroid/view/View;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    :cond_0
    return-void
.end method
