.class Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/search/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/share/ShareUrlSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;Lcom/baidu/mapapi/search/share/ShareUrlSearch$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;-><init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0x6b

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->KEY_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_TIME_OUT:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_0
    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object p1

    new-instance v1, Lcom/baidu/mapapi/search/share/ShareUrlResult;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/search/share/ShareUrlResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetLocationShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object p1

    new-instance v1, Lcom/baidu/mapapi/search/share/ShareUrlResult;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/search/share/ShareUrlResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetPoiDetailShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetLocationShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;->a:Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/share/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/share/ShareUrlResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;->onGetPoiDetailShareUrlResult(Lcom/baidu/mapapi/search/share/ShareUrlResult;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
