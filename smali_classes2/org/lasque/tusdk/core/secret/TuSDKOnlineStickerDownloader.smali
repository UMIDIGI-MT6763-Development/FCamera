.class public Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a:Ljava/util/Set;

    return-object p0
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lorg/lasque/tusdk/core/type/DownloadTaskStatus;->StatusDownFailed:Lorg/lasque/tusdk/core/type/DownloadTaskStatus;

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;->onDownloadProgressChanged(JFLorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(J)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;-><init>(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a:Ljava/util/Set;

    iget-wide v2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;-><init>()V

    const-string v2, "id"

    iget-wide v3, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "devid"

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->webAPIEngine()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object p1

    const-string v2, "/sticker/validKey"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method


# virtual methods
.method public final containsTask(J)Z
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v0, v1, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->containsTask(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z

    move-result p1

    return p1
.end method

.method public final downloadStickerGroup(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-wide v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->isDownloaded(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;

    return-object v0
.end method

.method public final isDownloaded(J)Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->containsGroupId(J)Z

    move-result p1

    return p1
.end method

.method public final isDownloading(J)Z
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->ins:Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v0, v1, p1, p2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;->isDownloading(Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;J)Z

    move-result p1

    return p1
.end method

.method public onStickerPackageStatusChanged(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 2

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->id:J

    iget p2, p2, Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;->progress:F

    invoke-interface {p1, v0, v1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;->onDownloadProgressChanged(JFLorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    return-void
.end method

.method public final removeStickerGroup(J)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->removeDownloadWithIdt(J)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;)Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$TuSDKOnlineStickerDownloaderDelegate;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->removeDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->appenDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    :goto_0
    return-object p0
.end method
