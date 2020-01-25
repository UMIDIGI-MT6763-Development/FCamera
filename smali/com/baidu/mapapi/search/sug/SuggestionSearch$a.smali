.class Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/search/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/sug/SuggestionSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/search/sug/SuggestionSearch;Lcom/baidu/mapapi/search/sug/SuggestionSearch$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;-><init>(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

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
    iget-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    move-result-object p1

    new-instance v1, Lcom/baidu/mapapi/search/sug/SuggestionResult;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/search/sug/SuggestionResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;->onGetSuggestionResult(Lcom/baidu/mapapi/search/sug/SuggestionResult;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
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
    .locals 0

    return-void
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
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->a(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearch$a;->a:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->b(Lcom/baidu/mapapi/search/sug/SuggestionSearch;)Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/sug/c;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;->onGetSuggestionResult(Lcom/baidu/mapapi/search/sug/SuggestionResult;)V

    :cond_1
    :goto_0
    return-void
.end method
