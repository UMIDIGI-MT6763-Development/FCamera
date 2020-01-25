.class public Lcom/freeme/elementscenter/ui/ECResourceManager;
.super Lcom/freeme/elementscenter/ui/ECBackHandledFragment;
.source "ECResourceManager.java"


# instance fields
.field private hadIntercept:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

.field private mBody:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEditMenuItem:Landroid/view/MenuItem;

.field private mGridView:Landroid/widget/GridView;

.field private mIsEditMode:Z

.field private mIsShowPrompt:Z

.field private mMarkedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrompt:Landroid/view/View;

.field private mSelectMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/ui/ECResourceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/ui/ECResourceManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECResourceManager;->entryEditMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/elementscenter/ui/ECResourceManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/ui/ECResourceManager;->changedItemSelected(IZ)V

    return-void
.end method

.method private changedItemSelected(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECItemData;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1}, Lcom/freeme/elementscenter/ui/ECResourceManager;->updateSelectedState(ZZLjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private entryEditMode()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iput-boolean v2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    const-string v0, ""

    invoke-direct {p0, v2, v1, v0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->updateSelectedState(ZZLjava/lang/String;)V

    return-void
.end method

.method private entryEditMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iput-boolean v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    invoke-direct {p0, p1, v1}, Lcom/freeme/elementscenter/ui/ECResourceManager;->changedItemSelected(IZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private exitEditMode()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mActionBar:Landroid/app/ActionBar;

    sget v2, Lcom/freeme/elementscenter/R$string;->ec_titlebar_right:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    iget-boolean v3, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->setDatas(Ljava/util/List;Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->showNotPrompt()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method private declared-synchronized handleDeleteConfirm()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v4, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    iget-object v5, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    iput-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v2}, Lcom/freeme/elementscenter/data/ECUtil;->removeItem(Lcom/freeme/elementscenter/ui/ECItemData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {}, Lcom/freeme/elementscenter/ui/ECResourceObserved;->getInstance()Lcom/freeme/elementscenter/ui/ECResourceObserved;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/elementscenter/ui/ECResourceObserved;->notifyDataDelete(Ljava/util/List;)V

    :cond_3
    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->exitEditMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSettingPrompt(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECItemData;

    iget p1, p1, Lcom/freeme/elementscenter/ui/ECItemData;->mTypeCode:I

    const v0, 0x187cd

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u8bf7\u5230\u76f8\u518c\u62fc\u56fe\u8bbe\u7f6e\u754c\u9762\u4e2d\u8bbe\u7f6e"

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->showMessageDailog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u8bf7\u5230\u76f8\u673a\u8bbe\u7f6e\u754c\u9762\u4e2d\u8bbe\u7f6e"

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->showMessageDailog(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private initGridView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mContent:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->setDatas(Ljava/util/List;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/freeme/elementscenter/ui/ECResourceManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/ui/ECResourceManager$1;-><init>(Lcom/freeme/elementscenter/ui/ECResourceManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/freeme/elementscenter/ui/ECResourceManager$2;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/ui/ECResourceManager$2;-><init>(Lcom/freeme/elementscenter/ui/ECResourceManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initPromptAndBody()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mContent:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_resouce_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mPrompt:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mContent:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_resource_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mBody:Landroid/view/View;

    return-void
.end method

.method private showNotPrompt()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsShowPrompt:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsShowPrompt:Z

    :goto_1
    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsShowPrompt:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mBody:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mPrompt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mBody:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateSelectedState(ZZLjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    monitor-enter p1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-le p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/freeme/elementscenter/R$string;->markup_btn_delete_onemore:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/freeme/elementscenter/R$string;->markup_btn_delete_one_or_zero:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_4

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    if-eqz p2, :cond_5

    sget v1, Lcom/freeme/elementscenter/R$drawable;->action_clear_selected:I

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    if-eqz p2, :cond_5

    sget v1, Lcom/freeme/elementscenter/R$drawable;->action_all_selected:I

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    iget-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    iget-object p3, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    invoke-virtual {p1, p2, p3, v0}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->setDatas(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public allOrNoneMarkedToggle()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    sget v1, Lcom/freeme/elementscenter/R$drawable;->action_all_selected:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/elementscenter/ui/ECItemData;

    iget-object v5, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    iget-object v4, v4, Lcom/freeme/elementscenter/ui/ECItemData;->mCode:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    sget v1, Lcom/freeme/elementscenter/R$drawable;->action_clear_selected:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/freeme/elementscenter/R$string;->markup_btn_delete_onemore:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/freeme/elementscenter/R$string;->markup_btn_delete_one_or_zero:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mAdapter:Lcom/freeme/elementscenter/ui/ECResourceAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECResourceAdapter;->notifyDataSetChanged()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method handleBack()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->exitEditMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->popFragment(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mIsEditMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->exitEditMode()V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->hadIntercept:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->hadIntercept:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->popFragment(Landroid/app/Activity;)V

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mActionBar:Landroid/app/ActionBar;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mMarkedList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "itemDataList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget v0, Lcom/freeme/elementscenter/R$menu;->main:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget p2, Lcom/freeme/elementscenter/R$id;->action_edit:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    sget p2, Lcom/freeme/elementscenter/R$id;->action_delete:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDeleteMenuItem:Landroid/view/MenuItem;

    sget p2, Lcom/freeme/elementscenter/R$id;->action_select:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mSelectMenuItem:Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mEditMenuItem:Landroid/view/MenuItem;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object p3, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mActionBar:Landroid/app/ActionBar;

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_titlebar_right:I

    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/ui/ECResourceManager;->setHasOptionsMenu(Z)V

    sget p3, Lcom/freeme/elementscenter/R$layout;->ec_resource_manager:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mContent:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mContent:Landroid/view/View;

    new-instance p2, Lcom/freeme/elementscenter/ui/ECResourceManager$3;

    invoke-direct {p2, p0}, Lcom/freeme/elementscenter/ui/ECResourceManager$3;-><init>(Lcom/freeme/elementscenter/ui/ECResourceManager;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->initGridView()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->initPromptAndBody()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->showNotPrompt()V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECResourceManager;->mContent:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->action_edit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->entryEditMode()V

    move v0, v2

    goto :goto_0

    :cond_0
    sget v1, Lcom/freeme/elementscenter/R$id;->action_delete:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->handleDeleteConfirm()V

    move v0, v2

    goto :goto_0

    :cond_1
    sget v1, Lcom/freeme/elementscenter/R$id;->action_select:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->allOrNoneMarkedToggle()V

    move v0, v2

    goto :goto_0

    :cond_2
    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECResourceManager;->handleBack()V

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    return v2

    :cond_4
    invoke-super {p0, p1}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
