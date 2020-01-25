.class Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;
.super Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/http/HttpHeader;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;)V

    return-void
.end method

.method protected onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 0

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

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;)V

    return-void

    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_3

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/json/JsonHelper;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->setJson(Lorg/json/JSONObject;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher$1;->a:Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;->a(Lorg/lasque/tusdk/core/secret/TuSDKOnlineStickerFetcher;)V

    :goto_2
    return-void
.end method
