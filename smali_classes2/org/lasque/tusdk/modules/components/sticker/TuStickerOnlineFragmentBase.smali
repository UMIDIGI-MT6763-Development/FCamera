.class public abstract Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->notifyOnlineData(Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;)V

    return-void
.end method


# virtual methods
.method protected getPageFinishedData()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getAllDatas()Lorg/json/JSONObject;

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

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->onHandleDetail(J)V

    return-void
.end method

.method protected handleSelected([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->onHandleSelected(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->getWebview()Lorg/lasque/tusdk/core/view/TuSdkWebView;

    sget-object p1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->getAct()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->setOnlineType(Ljava/lang/String;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editStickerOnlineFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->onDestroyView()V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->removeDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    return-void
.end method

.method protected abstract onHandleDetail(J)V
.end method

.method protected abstract onHandleSelected(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
.end method

.method protected onResourceCancelDownload(J)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->cancelDownload(J)V

    return-void
.end method

.method protected onResourceDownload(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->download(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuOnlineFragment;->viewDidLoad(Landroid/view/ViewGroup;)V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerOnlineFragmentBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->appenDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    return-void
.end method
