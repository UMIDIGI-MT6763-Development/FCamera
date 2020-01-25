.class public Lorg/lasque/tusdk/core/view/listview/TuSdkListView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkOnItemClickListener;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

.field private e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

.field private f:Ljava/lang/String;

.field private g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

.field private h:I

.field private i:Z

.field private j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

.field private k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

.field private l:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    return-object p0
.end method

.method private a()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getTopHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getTopHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setTopHeight(I)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getTopHeight()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setTopHeight(I)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->addInTopHolderView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->i:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->needShowFooter(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setTotalFooterViewInfo(Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->needShowFooter(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setTotalFooterViewInfo(Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;Z)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getTotalFooterView()Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->setTitleFormater(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->i:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->needShowFooter(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected buildOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkOnItemClickListener;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkOnItemClickListener;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)V

    return-object v0
.end method

.method protected buildSdkAdapter()Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;)V

    return-object v0
.end method

.method protected createCellView(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->l:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;->onListViewItemCreate(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected createViewFromResource(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->createCellView(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of p3, p2, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;

    invoke-interface {p3}, Lorg/lasque/tusdk/core/view/TuSdkViewInterface;->viewNeedRest()V

    :cond_1
    iget-object p3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    if-eqz p3, :cond_2

    invoke-interface {p3, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->onViewBinded(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;Landroid/view/View;)V

    :cond_2
    return-object p2
.end method

.method public deselectCell()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;->onCellDeselected()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    :cond_1
    :goto_0
    return-void
.end method

.method public emptyNeedFullHeight()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method public enableFlingAction()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->setDelegate(Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction$TuSdkListViewFlingActionDelegate;)V

    return-void
.end method

.method public getDataSource()Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    return-object v0
.end method

.method public getDeleagte()Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->l:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getFlingAction()Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    return-object v0
.end method

.method public getItemClickListener()Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    return-object v0
.end method

.method public getSdkAdapter()Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->buildSdkAdapter()Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    return-object v0
.end method

.method public getSelectedCellView()Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    return-object v0
.end method

.method public getTotalFooterFormater()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFooterView()Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->h:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->h:I

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    return-object v0
.end method

.method public getTotalFooterViewId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->h:I

    return v0
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method public isAutoHiddenTotalFooterView()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->i:Z

    return v0
.end method

.method public ismDisableAutoDeselectCell()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->c:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->onDestory()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onFlingActionCancelItemClick(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method protected onListViewItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->c:Z

    if-nez p1, :cond_1

    instance-of p1, p2, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    invoke-interface {p1, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;->onCellSelected(I)V

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getDataIndex(I)I

    move-result p3

    invoke-interface {p1, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    invoke-interface {p3, p0, p2, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;->onListViewItemClick(Lorg/lasque/tusdk/core/view/listview/TuSdkListView;Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->listViewAt(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    invoke-virtual {v1, p1, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected preSetAdapter(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;)V
    .locals 0

    return-void
.end method

.method public reloadData(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getSdkAdapter()Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->getIndexPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a()V

    :goto_1
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->reloadData(Z)V

    return-void
.end method

.method public resetFlingItem()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;->resetDownView()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->preSetAdapter(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    if-nez v0, :cond_2

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->h:I

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d()V

    :cond_3
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAutoHiddenTotalFooterView(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->i:Z

    return-void
.end method

.method public setDataSource(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    return-void
.end method

.method public setDeleagte(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->l:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setItemClickListener(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setDisableAutoDeselectCell(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->c:Z

    return-void
.end method

.method public setEmptyView(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->getTopHolderView()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->b:Landroid/view/View;

    return-void
.end method

.method public setFlingAction(Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkListViewFlingAction;

    return-void
.end method

.method public setItemClickListener(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->e:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewItemClickListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->buildOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSdkAdapter(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->j:Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewAdapter;

    return-void
.end method

.method public setSelectedCellView(Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;

    return-void
.end method

.method public setTotalFooterFormater(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->setTitleFormater(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTotalFooterView(Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    return-void
.end method

.method public setTotalFooterViewId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->h:I

    return-void
.end method

.method protected setTotalFooterViewInfo(Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;Z)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->k:Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->g:Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;->count()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->setTotal(I)V

    :cond_0
    return-void
.end method
