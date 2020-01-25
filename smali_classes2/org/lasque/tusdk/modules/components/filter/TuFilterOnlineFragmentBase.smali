.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->notifyOnlineData(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    return-void
.end method


# virtual methods
.method public getAction()Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->ActionNormal:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-object v0
.end method

.method protected getPageFinishedData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getAllDatas()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleDetail([Ljava/lang/String;)V
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

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->onHandleDetail(J)V

    return-void
.end method

.method protected handleSelected([Ljava/lang/String;)V
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

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->onHandleSelected(J)V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->getWebview()Lorg/lasque/tusdk/core/view/TuSdkWebView;

    sget-object p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeFilter:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->setOnlineType(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->setArgs(Ljava/lang/String;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editFilterOnlineFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->onDestroyView()V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->removeDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;)V

    return-void
.end method

.method protected abstract onHandleDetail(J)V
.end method

.method protected abstract onHandleSelected(J)V
.end method

.method protected onResourceCancelDownload(J)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->cancelDownload(J)V

    return-void
.end method

.method protected onResourceDownload(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->download(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->viewDidLoad(Landroid/view/ViewGroup;)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuFilterOnlineFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->appenDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;)V

    return-void
.end method
