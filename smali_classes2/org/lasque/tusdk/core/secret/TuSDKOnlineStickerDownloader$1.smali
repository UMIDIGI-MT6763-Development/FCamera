.class Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;
.super Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

.field final synthetic b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;

    iput-object p2, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestedFailed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 2

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;J)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 2

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(ILjava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide v0, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p3}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->json(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p2

    const-string p3, "id"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p3, "key"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "dl_key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p3, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->download(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->b:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;

    iget-object p2, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader$1;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-wide p2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerDownloader;J)V

    :goto_0
    return-void
.end method
