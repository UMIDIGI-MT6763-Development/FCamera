.class public Lcom/freeme/elementscenter/dc/ui/DCMainFragment;
.super Lcom/freeme/elementscenter/ui/ECBackHandledFragment;
.source "DCMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;


# static fields
.field public static sReponseAdVersionCode:I

.field public static sReponsePluginVersionCode:I


# instance fields
.field private hadIntercept:Z

.field private mAdVersionCode:I

.field private mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

.field private mBannerRoot:Landroid/view/View;

.field private mBody:Landroid/view/View;

.field private mContainer:Landroid/view/View;

.field private mCurrPageIndex:I

.field private mECView:Landroid/view/View;

.field private mForceUpdate:Z

.field private mIsBannerRequestSuccess:Z

.field private mIsWorking:Z

.field private mLoadingBar:Landroid/widget/ProgressBar;

.field private mNoNetworkPrompt:Landroid/view/View;

.field private mPageAdapter:Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;

.field private mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

.field public mPluginVersionCode:I

.field private mReload:Landroid/widget/Button;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsWorking:Z

    return p0
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mAdVersionCode:I

    return p0
.end method

.method static synthetic access$202(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsBannerRequestSuccess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)I
    .locals 0

    iget p0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mCurrPageIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mCurrPageIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)Lcom/freeme/elementscenter/dc/ui/TabWidget;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    return-object p0
.end method

.method private handleAdvertiseLocalData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/AdvertiseItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsWorking:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->removeAllViews()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsBannerRequestSuccess:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/elementscenter/dc/data/AdvertiseItem;

    new-instance v2, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Lcom/freeme/elementscenter/dc/data/AdvertiseItem;->adverUrl:Ljava/lang/String;

    new-instance v4, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$1;

    invoke-direct {v4, p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$1;-><init>(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    sget v4, Lcom/freeme/elementscenter/R$drawable;->banner_default_bg:I

    invoke-virtual {v1, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1}, Lcom/freeme/elementscenter/dc/ui/BannerItemContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->setDataReady(Z)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    invoke-virtual {p1}, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;->startAutoScroll()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsBannerRequestSuccess:Z

    :goto_1
    return-void
.end method

.method private handleReload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mForceUpdate:Z

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->requestData()V

    return-void
.end method

.method private initBanner()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->banner_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBannerRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->banner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBanner:Lcom/freeme/elementscenter/dc/ui/AutoScrollLoopBanner;

    return-void
.end method

.method private initLoadingBar()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_downloading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initPrompt()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_no_network_prompt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mNoNetworkPrompt:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->reload:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mReload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mReload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTabAndViewPager()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_page_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBody:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->tab_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/elementscenter/dc/ui/TabWidget;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-virtual {v0, p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->setOnTabSelectedListener(Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;)V

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;

    invoke-direct {v0}, Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPageAdapter:Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$string;->mode_download:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->addTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPageAdapter:Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;->addItem(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mTabWidget:Lcom/freeme/elementscenter/dc/ui/TabWidget;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/freeme/elementscenter/R$string;->elements_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->addTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPageAdapter:Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mECView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;->addItem(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget v1, Lcom/freeme/elementscenter/R$id;->view_content_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPageAdapter:Lcom/freeme/elementscenter/dc/ui/DCPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$3;-><init>(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private requestAdverOnlineData()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/elementscenter/data/ECUtil;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "lcd"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v2, "spdroi"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "customer"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "requestVersion"

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mAdVersionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment$2;-><init>(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const v3, 0x19263

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/dc/data/AdvertiseOnlineData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private requestData()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->NetWorkStatus(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "advertise"

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->readJsonStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "advertise"

    invoke-static {v1, v0}, Lcom/freeme/elementscenter/data/ECUtil;->jsonStrToAdvertiseItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->handleAdvertiseLocalData(Ljava/util/List;)V

    move v0, v3

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mAdVersionCode:I

    move v0, v2

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mAdVersionCode:I

    move v0, v2

    :goto_0
    iget-boolean v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mForceUpdate:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->requestAdverOnlineData()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/freeme/elementscenter/ECMainActivity;->sCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/data/ECUtil;->readJsonStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/freeme/elementscenter/ECMainActivity;->sCameraId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freeme/elementscenter/data/ECUtil;->jsonStrToPluginItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-virtual {v1, v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->handlePluginLocalData(Ljava/util/List;)V

    move v2, v3

    goto :goto_1

    :cond_4
    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginVersionCode:I

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginVersionCode:I

    :goto_1
    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mForceUpdate:Z

    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->requestPluginOnlineData()V

    :cond_7
    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mForceUpdate:Z

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mForceUpdate:Z

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->showViewByStatus(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method private requestPluginOnlineData()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->requestPluginOnlineData()V

    return-void
.end method


# virtual methods
.method public getBannerRequestSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsBannerRequestSuccess:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->hadIntercept:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->hadIntercept:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

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

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->handleReload()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->setHasOptionsMenu(Z)V

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsWorking:Z

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mForceUpdate:Z

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p3

    sget v0, Lcom/freeme/elementscenter/R$string;->dc_title:I

    invoke-virtual {p3, v0}, Landroid/app/ActionBar;->setTitle(I)V

    sget p3, Lcom/freeme/elementscenter/R$layout;->dc_main:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    sget p3, Lcom/freeme/elementscenter/R$layout;->dc_elements_center_view:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mECView:Landroid/view/View;

    sget p3, Lcom/freeme/elementscenter/R$layout;->dc_plugin_panel_view:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    const-string p1, "adVersionCode"

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->readVersionFromPreference(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mAdVersionCode:I

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-virtual {p1, p0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->setDCMainFragment(Lcom/freeme/elementscenter/dc/ui/DCMainFragment;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->initBanner()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->initTabAndViewPager()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->initPrompt()V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->initLoadingBar()V

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->showViewByStatus(I)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->requestData()V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mContainer:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mIsWorking:Z

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->share_freeme:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/elementscenter/util/ShareFreemeUtil;->shareFreemeOS(Landroid/content/Context;)V

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
    .locals 0

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onResume()V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mPluginPanel:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->resume()V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 3

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mCurrPageIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mCurrPageIndex:I

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

    invoke-static {p1}, Lcom/freeme/elementscenter/provider/StatisticDBData;->getDCECOptionId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    iget-object p1, v0, Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;->optionId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/freeme/elementscenter/provider/StatisticDBData;->insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V

    :cond_1
    return-void
.end method

.method public readVersionFromPreference(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public saveVersionToPreference(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public showViewByStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mLoadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBody:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBannerRoot:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBody:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBannerRoot:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBody:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mBannerRoot:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCMainFragment;->mNoNetworkPrompt:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
