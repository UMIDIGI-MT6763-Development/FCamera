.class public abstract Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;
.super Lorg/lasque/tusdk/impl/activity/TuFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;-><init>(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->e:Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getOnlineType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->getType(I)Lorg/lasque/tusdk/core/type/OnlineCommandAction;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$2;->a:[I

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/type/OnlineCommandAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->handleDetail([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->handleSelected([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->handleCancel([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->handleDownload([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->e:Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setAdapter(Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getDetailDataId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    const-string v0, "/%s/item?id=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getOnlineType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getDetailDataId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/%s/index?%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getOnlineType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getArgs()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    :cond_2
    const-string v0, "/%s/index"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getOnlineType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->getWebUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setWebPageUrl(Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$TuSdkOnlineInteface;-><init>(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Lorg/lasque/tusdk/impl/activity/TuOnlineFragment$1;)V

    const-string v1, "tusdkBridge"

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->d:Z

    return p1
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailDataId()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a:J

    return-wide v0
.end method

.method public getOnlineType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getPageFinishedData()Ljava/lang/String;
.end method

.method public abstract getWebview()Lorg/lasque/tusdk/core/view/TuSdkWebView;
.end method

.method protected handleCancel([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->onResourceCancelDownload(J)V

    return-void
.end method

.method protected handleDetail([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected handleDownload([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x3

    aget-object v2, p1, v2

    const/4 v3, 0x4

    aget-object p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->onResourceDownload(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleSelected([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected navigatorBarLoaded(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->navigatorBarLoaded(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->setIsSupportSlideBack(Z)V

    return-void
.end method

.method public navigatorBarRightAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->dismissActivityWithAnim()V

    return-void
.end method

.method protected notifyOnlineData(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getWebview()Lorg/lasque/tusdk/core/view/TuSdkWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:clientBridge.getHandlers().onTuSdkSend("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->getStatusChangeData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setWebPageUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract onResourceCancelDownload(J)V
.end method

.method protected abstract onResourceDownload(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public setDetailDataId(J)V
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a:J

    return-void
.end method

.method public setOnlineType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->b:Ljava/lang/String;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->getWebview()Lorg/lasque/tusdk/core/view/TuSdkWebView;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->a(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V

    return-void
.end method
