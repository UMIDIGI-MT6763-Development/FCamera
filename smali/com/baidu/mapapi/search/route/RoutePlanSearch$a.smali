.class Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/platform/comapi/search/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/RoutePlanSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/RoutePlanSearch$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;-><init>(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0x6b

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->ST_EN_TOO_NEAR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NOT_SUPPORT_BUS_2CITY:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NOT_SUPPORT_BUS:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->KEY_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_TIME_OUT:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_0
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)I

    move-result p1

    packed-switch p1, :pswitch_data_2

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object p1

    new-instance v1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object p1

    new-instance v1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object p1

    new-instance v1, Lcom/baidu/mapapi/search/route/TransitRouteResult;

    invoke-direct {v1, v0}, Lcom/baidu/mapapi/search/route/TransitRouteResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
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
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/e;->f(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestEndCity()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestEndNode()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestStartCity()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestStartNode()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestWpCity()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestWpNode()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/baidu/mapapi/search/route/WalkingRouteResult;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/e;->f(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->a(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/e;->f(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    iget-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/e;->b(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/e;->c(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/WalkingRouteResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;->a:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-static {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/e;->a(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRouteResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V

    :cond_1
    :goto_0
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
