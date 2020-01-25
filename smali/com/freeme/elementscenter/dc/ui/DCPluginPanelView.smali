.class public Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;
.super Landroid/widget/LinearLayout;
.source "DCPluginPanelView.java"

# interfaces
.implements Lcom/freeme/elementscenter/PluginManager$PluginListChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/freeme/elementscenter/ECMainActivity;

.field private mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

.field private mColorsList:Landroid/content/res/ColorStateList;

.field private mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

.field private mGridView:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPluginManager:Lcom/freeme/elementscenter/PluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object p2, p1

    check-cast p2, Lcom/freeme/elementscenter/ECMainActivity;

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-virtual {p2}, Lcom/freeme/elementscenter/ECMainActivity;->getPluginManager()Lcom/freeme/elementscenter/PluginManager;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    invoke-virtual {p2, p0}, Lcom/freeme/elementscenter/PluginManager;->addListener(Lcom/freeme/elementscenter/PluginManager$PluginListChanged;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/freeme/elementscenter/R$drawable;->coming_soon_text_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mColorsList:Landroid/content/res/ColorStateList;

    new-instance p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-direct {p1, p0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)V

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Lcom/freeme/elementscenter/dc/data/PluginItem;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->queryPluginStatus(Lcom/freeme/elementscenter/dc/data/PluginItem;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mColorsList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/ECMainActivity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->requestUninstallPlugin(Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;[Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->requestDownloadPlugin([Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    return-void
.end method

.method private queryPluginStatus(Lcom/freeme/elementscenter/dc/data/PluginItem;)I
    .locals 9

    iget v0, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->pluginType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    if-eq v0, v2, :cond_1

    iput v1, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    iput v0, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    :cond_1
    :goto_0
    iget v0, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v1, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->isNeedUpdate:Z

    invoke-static {}, Lcom/freeme/elementscenter/data/ECUtil;->getPluginDownloadPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-virtual {v4}, Lcom/freeme/elementscenter/ECMainActivity;->getPluginManager()Lcom/freeme/elementscenter/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/freeme/elementscenter/PluginManager;->getPluginList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".delete"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x2

    if-eqz v6, :cond_4

    iget v6, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    if-eq v6, v2, :cond_5

    iput v1, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    move v0, v1

    goto :goto_3

    :cond_4
    iput v8, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    move v0, v8

    :cond_5
    :goto_3
    iget v6, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->versionCode:I

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v6, v5, :cond_3

    iput v7, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    iput-boolean v2, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->isNeedUpdate:Z

    move v0, v7

    goto :goto_2

    :cond_6
    return v0
.end method

.method private requestDownloadPlugin([Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 2

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$3;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-direct {v0, p0, v1, p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$3;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Landroid/content/Context;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p2, p1}, Lcom/freeme/elementscenter/dc/data/PluginDownloadAndInstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestUninstallPlugin(Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V
    .locals 3

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$2;

    invoke-direct {v0, p0, p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$2;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/freeme/elementscenter/dc/data/PluginUninstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public OnPluginListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItemList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-virtual {p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/data/PluginItem;

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->queryPluginStatus(Lcom/freeme/elementscenter/dc/data/PluginItem;)I

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handlePluginLocalData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/PluginItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getBannerRequestSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->showViewByStatus(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/dc/data/PluginItem;

    invoke-direct {p0, v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->queryPluginStatus(Lcom/freeme/elementscenter/dc/data/PluginItem;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-virtual {v0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->setItemList(Ljava/util/List;)V

    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->showViewByStatus(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/freeme/elementscenter/R$id;->gridview:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public requestPluginOnlineData()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-static {v1}, Lcom/freeme/elementscenter/data/ECUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "lcd"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v3, "lndroi"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "customer"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "useType"

    sget v3, Lcom/freeme/elementscenter/ECMainActivity;->sCameraId:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "from"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "to"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requestVersion"

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    iget v2, v2, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginVersionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$1;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const v3, 0x18b50

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/dc/data/PluginOnlineData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/dc/data/PluginItem;

    invoke-direct {p0, v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->queryPluginStatus(Lcom/freeme/elementscenter/dc/data/PluginItem;)I

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mAdapter:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    invoke-virtual {v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDCMainFragment(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->mDCMainFragment:Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    const-string v0, "pluginVersionCode"

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->readVersionFromPreference(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginVersionCode:I

    return-void
.end method
