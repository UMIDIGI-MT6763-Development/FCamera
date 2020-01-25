.class public Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;

.field private b:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;-><init>(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->b:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;

    return-void
.end method

.method private a(IZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/stickerGroup/index"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?id=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&devid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->getDevId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->uniqueDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_0

    const-string v1, "&cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "&is_smart=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;->onFetchFailed()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;->onFetchCompleted(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final fetchStickerGroupWithCursor(IZ)V
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->webAPIEngine()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->b:Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->get(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;

    return-object v0
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;)Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$TuSDKOnlineStickerFetcherDelegate;

    return-object p0
.end method
