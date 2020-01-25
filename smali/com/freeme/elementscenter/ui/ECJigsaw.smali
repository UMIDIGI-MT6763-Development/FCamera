.class public Lcom/freeme/elementscenter/ui/ECJigsaw;
.super Lcom/freeme/elementscenter/ui/ECBackHandledFragment;
.source "ECJigsaw.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;
.implements Lcom/freeme/elementscenter/data/ECOnlineVersion$OnlineVersionResultListener;


# instance fields
.field private hadIntercept:Z

.field private mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

.field private mBody:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mDataTask:Lcom/freeme/elementscenter/data/ECOnlineData;

.field private mGridView:Landroid/widget/GridView;

.field private mJigsawVerNum:I

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mNoNetworkPrompt:Landroid/view/View;

.field private mReload:Landroid/widget/Button;

.field private mSharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;-><init>()V

    return-void
.end method

.method private constructManagerDatas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/ui/ECItemData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->getItemDataList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/elementscenter/ui/ECItemData;

    iget v3, v2, Lcom/freeme/elementscenter/ui/ECItemData;->mDownloadStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private enrtyManagerFragment()V
    .locals 4

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->constructManagerDatas()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/freeme/elementscenter/ui/ECResourceManager;

    invoke-direct {v1}, Lcom/freeme/elementscenter/ui/ECResourceManager;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "itemDataList"

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/ui/ECResourceManager;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private declared-synchronized handleLocalData(ILjava/util/List;)V
    .locals 1
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

    const/4 p1, 0x2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECJigsaw;->showViewByStatus(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECJigsaw;->showViewByStatus(I)V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->isDownloaded(Lcom/freeme/elementscenter/ui/ECItemData;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {p1, p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->setItemDataList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleOnlineData(ILjava/util/List;)V
    .locals 1
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

    const/4 p1, 0x2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECJigsaw;->showViewByStatus(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/ui/ECJigsaw;->showViewByStatus(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/ui/ECItemData;

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->isDownloaded(Lcom/freeme/elementscenter/ui/ECItemData;)Z

    goto :goto_0

    :cond_1
    const-string p1, "jigsaw"

    invoke-static {p1, p2}, Lcom/freeme/elementscenter/data/ECUtil;->ecItemDataToJsonStr(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jigsaw"

    invoke-static {v0, p1}, Lcom/freeme/elementscenter/data/ECUtil;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {p1, p2}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->setItemDataList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleReload()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->requestData()V

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

    const-string v1, "0304"

    iput-object v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    iget-object v1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_0
    return-void
.end method

.method private handleVersionNum(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->readJigsawCurrVerNumFromSp()V

    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mJigsawVerNum:I

    if-ge v1, p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->requestDataByTypeCode()V

    invoke-direct {p0, v0, p1}, Lcom/freeme/elementscenter/ui/ECJigsaw;->saveVersionToPreference(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private initGridView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_gridview_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mBody:Landroid/view/View;

    new-instance v0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initLoadingBar()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_downloading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mLoadingBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initPrompt()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_no_network_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mNoNetworkPrompt:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->reload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mReload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mReload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readJigsawCurrVerNumFromSp()V
    .locals 2

    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->readVersionFromPreference(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mJigsawVerNum:I

    return-void
.end method

.method private readVersionFromPreference(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private requestData()V
    .locals 2

    const v0, 0x188f9

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->requestUpdataDataByTypeCode(I)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->NetWorkStatus(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "jigsaw"

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->readJsonStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "jigsaw"

    invoke-static {v1, v0}, Lcom/freeme/elementscenter/data/ECUtil;->jsonStrToECItemDataList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->handleLocalData(ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->requestDataByTypeCode()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->requestDataByTypeCode()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->showViewByStatus(I)V

    :goto_0
    return-void
.end method

.method private requestDataByTypeCode()V
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/elementscenter/data/ECUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "sort"

    const-string v4, "modifyTime"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lcd"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "from"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/freeme/elementscenter/data/ECOnlineData;

    const/4 v2, 0x1

    const v3, 0x187cd

    invoke-direct {v1, v3, v2}, Lcom/freeme/elementscenter/data/ECOnlineData;-><init>(II)V

    invoke-virtual {v1, p0}, Lcom/freeme/elementscenter/data/ECOnlineData;->setOnlineDataReadyListener(Lcom/freeme/elementscenter/data/ECOnlineData$OnlineDataReadyListener;)V

    iput-object v1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mDataTask:Lcom/freeme/elementscenter/data/ECOnlineData;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v4}, Lcom/freeme/elementscenter/data/ECOnlineData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestUpdataDataByTypeCode(I)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/elementscenter/data/ECUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "lcd"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/freeme/elementscenter/data/ECOnlineVersion;

    invoke-direct {v1, p1}, Lcom/freeme/elementscenter/data/ECOnlineVersion;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/freeme/elementscenter/data/ECOnlineVersion;->setListener(Lcom/freeme/elementscenter/data/ECOnlineVersion$OnlineVersionResultListener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p1, v2}, Lcom/freeme/elementscenter/data/ECOnlineVersion;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveVersionToPreference(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private showViewByStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mBody:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mBody:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mBody:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mNoNetworkPrompt:Landroid/view/View;

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

    iget-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->hadIntercept:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->hadIntercept:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->popFragment(Landroid/app/Activity;)V

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/freeme/elementscenter/R$id;->back:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/freeme/elementscenter/R$id;->right:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->enrtyManagerFragment()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/freeme/elementscenter/R$id;->reload:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->handleReload()V

    :cond_3
    :goto_0
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

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    sget v0, Lcom/freeme/elementscenter/R$string;->ec_jigsaw_mode:I

    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Lcom/freeme/elementscenter/ui/ECJigsaw;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mSharedPref:Landroid/content/SharedPreferences;

    sget p3, Lcom/freeme/elementscenter/R$layout;->ec_gridview_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->initGridView()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->initPrompt()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->initLoadingBar()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->requestData()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->handleStatistic()V

    iget-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mContainer:Landroid/view/View;

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

    const v0, 0x187cd

    if-ne p1, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2, p3}, Lcom/freeme/elementscenter/ui/ECJigsaw;->handleOnlineData(ILjava/util/List;)V

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

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECJigsaw;->enrtyManagerFragment()V

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
    .locals 2

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onPause()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->pause()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mDataTask:Lcom/freeme/elementscenter/data/ECOnlineData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/data/ECOnlineData;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mDataTask:Lcom/freeme/elementscenter/data/ECOnlineData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/data/ECOnlineData;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onResume()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->resume(Landroid/widget/GridView;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigsaw;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onVersionResult(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x188f9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/freeme/elementscenter/ui/ECJigsaw;->handleVersionNum(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
