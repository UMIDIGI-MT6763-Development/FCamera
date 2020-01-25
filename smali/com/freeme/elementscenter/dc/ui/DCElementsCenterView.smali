.class public Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;
.super Landroid/widget/LinearLayout;
.source "DCElementsCenterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/freeme/elementscenter/data/ECOnlineVersion$OnlineVersionResultListener;
.implements Lcom/freeme/elementscenter/PluginManager$PluginListChanged;


# static fields
.field private static final TYPE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN:Ljava/lang/String; = ""


# instance fields
.field private mActivity:Lcom/freeme/elementscenter/ECMainActivity;

.field private mChild:Landroid/widget/TextView;

.field private mCurrVerNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mJigsaw:Landroid/widget/TextView;

.field private mPluginManager:Lcom/freeme/elementscenter/PluginManager;

.field private mPose:Landroid/widget/TextView;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWaterMark:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;

    invoke-direct {v0}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView$1;-><init>()V

    sput-object v0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->TYPE_ARRAY:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object p2, p1

    check-cast p2, Lcom/freeme/elementscenter/ECMainActivity;

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-virtual {p2}, Lcom/freeme/elementscenter/ECMainActivity;->getPluginManager()Lcom/freeme/elementscenter/PluginManager;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    invoke-virtual {p2, p0}, Lcom/freeme/elementscenter/PluginManager;->addListener(Lcom/freeme/elementscenter/PluginManager$PluginListChanged;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mCurrVerNumMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->readCurrVerNumFromSp()V

    const p1, 0x188f9

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->requestUpdataDataByTypeCode(I)V

    return-void
.end method

.method private handleVerNumEntry(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->TYPE_ARRAY:Landroid/util/SparseArray;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mCurrVerNumMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->saveVersionToPreference(Ljava/lang/String;I)V

    return-void
.end method

.method private handleVersionNum(Ljava/util/Map;)V
    .locals 9
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
    sget-object v0, Lcom/freeme/elementscenter/data/ECUtil;->TYPE_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mCurrVerNumMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->TYPE_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-le v5, v6, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/view/View;->setSelected(Z)V

    sget-object v7, Lcom/freeme/elementscenter/data/ECUtil;->IS_REQUEST_DATA_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setSelected(Z)V

    sget-object v6, Lcom/freeme/elementscenter/data/ECUtil;->IS_REQUEST_DATA_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v6, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mCurrVerNumMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readCurrVerNumFromSp()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mCurrVerNumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->TYPE_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->TYPE_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->readVersionFromPreference(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mCurrVerNumMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readVersionFromPreference(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mSharedPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private requestUpdataDataByTypeCode(I)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

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

    invoke-virtual {v1, v2}, Lcom/freeme/elementscenter/data/ECOnlineVersion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveVersionToPreference(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mSharedPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public OnPluginListChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mWaterMark:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPose:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mChild:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mJigsaw:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECUtil;->getPluginDownloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.freeme.cameraplugin.watermarkmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.freeme.cameraplugin.posemode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPose:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.freeme.cameraplugin.childrenmode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mChild:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->watermark:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/freeme/elementscenter/ui/ECWaterMark;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECWaterMark;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-static {v1, v0, v2}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/freeme/elementscenter/R$id;->pose:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/freeme/elementscenter/ui/ECPoseMode;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECPoseMode;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-static {v1, v0, v2}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/freeme/elementscenter/R$id;->child:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/freeme/elementscenter/ui/ECChildMode;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECChildMode;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-static {v1, v0, v2}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/freeme/elementscenter/R$id;->jigsaw:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/freeme/elementscenter/ui/ECJigsaw;

    invoke-direct {v0}, Lcom/freeme/elementscenter/ui/ECJigsaw;-><init>()V

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mActivity:Lcom/freeme/elementscenter/ECMainActivity;

    invoke-static {v1, v0, v2}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->handleVerNumEntry(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/freeme/elementscenter/R$id;->watermark:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mWaterMark:Landroid/widget/TextView;

    sget v0, Lcom/freeme/elementscenter/R$id;->pose:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPose:Landroid/widget/TextView;

    sget v0, Lcom/freeme/elementscenter/R$id;->child:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mChild:Landroid/widget/TextView;

    sget v0, Lcom/freeme/elementscenter/R$id;->jigsaw:I

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mJigsaw:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mWaterMark:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPose:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mChild:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mJigsaw:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {}, Lcom/freeme/elementscenter/data/ECUtil;->getPluginDownloadPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPluginManager:Lcom/freeme/elementscenter/PluginManager;

    invoke-virtual {v2}, Lcom/freeme/elementscenter/PluginManager;->getPluginList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freeme/elementscenter/data/ECUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.freeme.cameraplugin.watermarkmode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mWaterMark:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.freeme.cameraplugin.posemode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPose:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.freeme.cameraplugin.childrenmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mChild:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mPose:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mChild:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->mJigsaw:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-direct {p0, p2}, Lcom/freeme/elementscenter/dc/ui/DCElementsCenterView;->handleVersionNum(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
