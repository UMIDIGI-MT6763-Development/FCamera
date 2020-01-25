.class public Lcom/freeme/elementscenter/ui/ECWaterMark;
.super Lcom/freeme/elementscenter/ui/ECBackHandledFragment;
.source "ECWaterMark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;
.implements Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;


# instance fields
.field private hadIntercept:Z

.field private mBody:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mCurrPageIndex:I

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mNoNetworkPrompt:Landroid/view/View;

.field private mPageAdapter:Lcom/freeme/elementscenter/ui/ECPagerAdapter;

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPageTitle:[Ljava/lang/String;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mReload:Landroid/widget/Button;

.field private mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

.field private mdataTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/data/ECOnlineData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mdataTaskList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/ui/ECWaterMark;)I
    .locals 0

    iget p0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/freeme/elementscenter/ui/ECWaterMark;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/ui/ECWaterMark;)Lcom/freeme/elementscenter/dc/ui/TabWidget;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    return-object p0
.end method

.method private constructManagerDatas(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageTitle:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_4

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getPageDataItemList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/elementscenter/ui/ECItemData;

    iget v4, v3, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    if-ne v4, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getPageDataItemList(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/elementscenter/ui/ECItemData;

    iget v3, v2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    if-ne v3, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private enrtyManagerFragment()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->constructManagerDatas(Z)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-direct {v2}, Lcom/freeme/elementscenter/ui/ECResourceManager;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "itemDataList"

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v2, v3}, Lcom/freeme/elementscenter/ui/ECResourceManager;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private getPageDataItemList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECPageViewItem;

    invoke-virtual {p1}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->getAdapter()Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->getItemDataList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized handleLocalData(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/freeme/elementscenter/ui/ECWaterMark;->showViewByStatus(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->showViewByStatus(I)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECPageViewItem;

    invoke-virtual {p1}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->getAdapter()Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v1}, Lcom/freeme/elementscenter/data/ECUtil;->isDownloaded(Lcom/freeme/elementscenter/ui/ECItemData;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->setItemDataList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleOnlineData(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->showViewByStatus(I)V

    :cond_0
    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/freeme/elementscenter/ui/ECWaterMark;->showViewByStatus(I)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECPageViewItem;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->getAdapter()Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v2}, Lcom/freeme/elementscenter/data/ECUtil;->isDownloaded(Lcom/freeme/elementscenter/ui/ECItemData;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1, p2}, Lcom/freeme/elementscenter/data/ECUtil;->ecItemDataToJsonStr(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-static {p1, v1}, Lcom/freeme/elementscenter/data/ECUtil;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->setItemDataList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleReload()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->requestData()V

    return-void
.end method

.method private handleStatistic()V
    .locals 3

    new-instance v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;

    invoke-direct {v0}, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->actionId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionTime:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->extraInfo:I

    const-string v1, ""

    iput-object v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->resName:Ljava/lang/String;

    const-string v1, "0301"

    iput-object v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    iget-object v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_0
    return-void
.end method

.method private initBody()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_page_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mBody:Landroid/view/View;

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->initTabWidget()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->initViewPager()V

    return-void
.end method

.method private initLoadingBar()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_downloading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mLoadingBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initPrompt()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_no_network_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mNoNetworkPrompt:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->reload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mReload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mReload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTabWidget()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$array;->ec_watermark_pagetitles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageTitle:[Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->tab_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/ui/TabWidget;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->setOnTabSelectedListener(Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageTitle:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-virtual {v4, v3}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->addTab(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initViewPager()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->view_content_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageTitle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/freeme/elementscenter/ui/ECPageViewItem;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freeme/elementscenter/ui/ECPageViewItem;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageTitle:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/freeme/elementscenter/ui/ECPagerAdapter;

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/freeme/elementscenter/ui/ECPagerAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageAdapter:Lcom/freeme/elementscenter/ui/ECPagerAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageAdapter:Lcom/freeme/elementscenter/ui/ECPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/freeme/elementscenter/ui/ECWaterMark$1;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/ui/ECWaterMark$1;-><init>(Lcom/freeme/elementscenter/ui/ECWaterMark;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private requestData()V
    .locals 5

    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->IS_REQUEST_DATA_MAP:Ljava/util/HashMap;

    const-string v1, "watermark"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->IS_REQUEST_DATA_MAP:Ljava/util/HashMap;

    const-string v2, "watermark"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/freeme/elementscenter/data/ECUtil;->IS_REQUEST_DATA_MAP:Ljava/util/HashMap;

    const-string v3, "watermark"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->NetWorkStatus(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mdataTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v2, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    if-eqz v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ui/ECWaterMark;->requestDataByType(I)V

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/freeme/elementscenter/data/ECUtil;->WATERWARK_TYPE_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/freeme/elementscenter/data/ECUtil;->readJsonStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2, v3}, Lcom/freeme/elementscenter/data/ECUtil;->jsonStrToECItemDataList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/freeme/elementscenter/ui/ECWaterMark;->handleLocalData(ILjava/util/List;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ui/ECWaterMark;->requestDataByType(I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/freeme/elementscenter/ui/ECWaterMark;->requestDataByType(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->showViewByStatus(I)V

    :cond_6
    return-void
.end method

.method private requestDataByType(I)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/freeme/elementscenter/data/ECUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sort"

    const-string v4, "modifyTime"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lcd"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/freeme/elementscenter/data/ECOnlineData;

    const v2, 0x186a1

    invoke-direct {v1, v2, p1}, Lcom/freeme/elementscenter/data/ECOnlineData;-><init>(II)V

    invoke-virtual {v1, p0}, Lcom/freeme/elementscenter/data/ECOnlineData;->setOnlineDataReadyListener(Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mdataTaskList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {v1, p1}, Lcom/freeme/elementscenter/data/ECOnlineData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showViewByStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mBody:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mBody:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mBody:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->hadIntercept:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->hadIntercept:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->popFragment(Landroid/app/Activity;)V

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/freeme/elementscenter/R$id;->reload:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->handleReload()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget v0, Lcom/freeme/elementscenter/R$menu;->manager:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_watermark_mode:I

    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/ui/ECWaterMark;->setHasOptionsMenu(Z)V

    sget p3, Lcom/freeme/elementscenter/R$layout;->ec_pageview_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->initBody()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->initPrompt()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->initLoadingBar()V

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->showViewByStatus(I)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->requestData()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->handleStatistic()V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mContainer:Landroid/view/View;

    return-object p1
.end method

.method public onDataReady(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;)V"
        }
    .end annotation

    const v0, 0x186a1

    if-ne p1, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2, p3}, Lcom/freeme/elementscenter/ui/ECWaterMark;->handleOnlineData(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->action_manager:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECWaterMark;->enrtyManagerFragment()V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onPause()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    check-cast v1, Lcom/freeme/elementscenter/ui/ECPageViewItem;

    invoke-virtual {v1}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->onPause()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mdataTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/data/ECOnlineData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/freeme/elementscenter/data/ECOnlineData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/data/ECOnlineData;->cancel(Z)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onResume()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    check-cast v1, Lcom/freeme/elementscenter/ui/ECPageViewItem;

    invoke-virtual {v1}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/freeme/elementscenter/ui/ECWaterMark;->mCurrPageIndex:I

    return-void
.end method
