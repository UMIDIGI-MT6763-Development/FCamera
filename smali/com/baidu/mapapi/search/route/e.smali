.class public Lcom/baidu/mapapi/search/route/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRouteResult;
    .locals 14

    new-instance v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/TransitRouteResult;-><init>()V

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "taxi"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "taxi"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapapi/search/route/e;->d(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a(Lcom/baidu/mapapi/search/core/TaxiInfo;)V

    :cond_1
    const-string p0, "start_point"

    invoke-static {v1, p0}, Lcom/baidu/mapapi/search/route/e;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object p0

    const-string v2, "end_point"

    invoke-static {v1, v2}, Lcom/baidu/mapapi/search/route/e;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    const-string v3, "routes"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "legs"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v7, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-direct {v7}, Lcom/baidu/mapapi/search/route/TransitRouteLine;-><init>()V

    const-string v8, "distance"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setDistance(I)V

    const-string v8, "time"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setDuration(I)V

    invoke-virtual {v7, p0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    invoke-virtual {v7, v2}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v8, "steps"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v4

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "busline"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-gtz v11, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    invoke-direct {v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;-><init>()V

    const-string v12, "start_location"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v12, "end_location"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v12, "type"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x5

    sget-object v12, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    const-string v12, "instructions"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/search/route/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Ljava/lang/String;)V

    const-string v12, "distance"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setDistance(I)V

    const-string v12, "duration"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setDuration(I)V

    const-string v12, "path_geo"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->b(Ljava/lang/String;)V

    const-string v12, "vehicle"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "vehicle"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/search/route/e;->e(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/VehicleInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/core/VehicleInfo;)V

    const-string v12, "vehicle"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    const-string v13, "start_uid"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    const-string v13, "start_name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    const-string v13, "end_uid"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    const-string v13, "end_name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v12, "type"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_6

    sget-object v10, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->SUBWAY:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    goto :goto_2

    :cond_6
    sget-object v10, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->BUSLINE:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    :goto_2
    invoke-virtual {v11, v10}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    :cond_7
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setSteps(Ljava/util/List;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a(Ljava/util/List;)V

    return-object v0

    :cond_c
    :goto_5
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0

    :cond_d
    :goto_6
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/core/CityInfo;-><init>()V

    const-string v3, "num"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/baidu/mapapi/search/core/CityInfo;->num:I

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    return-object p1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/core/PoiInfo;-><init>()V

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    const-string v4, "addr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    const-string v4, "uid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    const-string v4, "geo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    iput-object p2, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    return-object p1

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {p1}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    const-string v0, "geo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/DrivingRouteResult;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;-><init>()V

    if-eqz v0, :cond_f

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "routes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_e

    new-instance v6, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;-><init>()V

    const-string v7, "start_point"

    invoke-static {v2, v7}, Lcom/baidu/mapapi/search/route/e;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v7, "end_point"

    invoke-static {v2, v7}, Lcom/baidu/mapapi/search/route/e;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v7, "waypoints"

    invoke-static {v2, v7}, Lcom/baidu/mapapi/search/route/e;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->a(Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_7

    :cond_2
    const-string v8, "legs"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_3

    return-object v1

    :cond_3
    const-string v8, "distance"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setDistance(I)V

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setDuration(I)V

    const-string v8, "steps"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_4

    return-object v1

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_d

    new-instance v10, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-direct {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;-><init>()V

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto/16 :goto_6

    :cond_5
    const-string v12, "paths"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v12, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_a

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_9

    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    new-instance v4, Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const-wide/16 v2, 0x0

    invoke-direct {v4, v2, v3, v2, v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    const-string v2, "loc_x"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v4, v2, v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v2, "loc_y"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v4, v2, v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    if-nez v14, :cond_7

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v14, v2, :cond_8

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    :cond_8
    :goto_3
    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_2

    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual {v10, v13}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_a
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :goto_4
    const-string v2, "traffics"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v4, v3, [I

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v3, :cond_b

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v10, v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a([I)V

    :cond_c
    const-string v2, "direction"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(I)V

    const-string v2, "distance"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setDistance(I)V

    const-string v2, "duration"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setDuration(I)V

    const-string v2, "description"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->c(Ljava/lang/String;)V

    const-string v2, "start_desc"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(Ljava/lang/String;)V

    const-string v2, "end_desc"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->b(Ljava/lang/String;)V

    const-string v2, "turn"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->b(I)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_1

    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual {v6, v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setSteps(Ljava/util/List;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a(Ljava/util/List;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_f
    :goto_8
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v1
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    new-instance p1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {p1}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    const-string v1, "loc_x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v1, "loc_y"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/WalkingRouteResult;
    .locals 7

    new-instance v0, Lcom/baidu/mapapi/search/route/WalkingRouteResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;-><init>()V

    if-eqz p0, :cond_7

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "taxi"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "taxi"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapapi/search/route/e;->d(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->a(Lcom/baidu/mapapi/search/core/TaxiInfo;)V

    :cond_1
    new-instance p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-direct {p0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;-><init>()V

    const-string v2, "start_point"

    invoke-static {v1, v2}, Lcom/baidu/mapapi/search/route/e;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v2, "end_point"

    invoke-static {v1, v2}, Lcom/baidu/mapapi/search/route/e;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v2, "routes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const-string v2, "legs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v2, "distance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setDistance(I)V

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setDuration(I)V

    const-string v2, "steps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    new-instance v4, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;-><init>()V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, "direction"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x1e

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->a(I)V

    const-string v6, "distance"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->setDistance(I)V

    const-string v6, "duration"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->setDuration(I)V

    const-string v6, "start_loc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v6, "end_loc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d(Ljava/lang/String;)V

    const-string v6, "start_desc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->b(Ljava/lang/String;)V

    const-string v6, "end_desc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->c(Ljava/lang/String;)V

    const-string v6, "path"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->a(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setSteps(Ljava/util/List;)V

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->a(Ljava/util/List;)V

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :cond_7
    :goto_2
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/TaxiInfo;-><init>()V

    const-string v0, "remark"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDesc(Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDistance(I)V

    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDuration(I)V

    const-string v0, "total_price"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "start_price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "km_price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setStartPrice(F)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setStartPrice(F)V

    :goto_4
    if-eqz v1, :cond_6

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setPerKMPrice(F)V

    goto :goto_6

    :cond_6
    :goto_5
    invoke-virtual {p0, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setPerKMPrice(F)V

    :goto_6
    return-object p0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/RouteNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "loc_x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "loc_y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/VehicleInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lcom/baidu/mapapi/search/core/VehicleInfo;

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/VehicleInfo;-><init>()V

    const-string v0, "zone_price"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setZonePrice(I)V

    const-string v0, "total_price"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setTotalPrice(I)V

    const-string v0, "name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setTitle(Ljava/lang/String;)V

    const-string v0, "stop_num"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setPassStationNum(I)V

    const-string v0, "uid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setUid(Ljava/lang/String;)V

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "address_info"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;-><init>()V

    const-string v3, "st_cityname"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en_cityname"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "hasAddrList"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "startcitys"

    invoke-static {v1, v4}, Lcom/baidu/mapapi/search/route/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d(Ljava/util/List;)V

    const-string v4, "startpoints"

    invoke-static {v1, v4, v3}, Lcom/baidu/mapapi/search/route/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a(Ljava/util/List;)V

    const-string v3, "endcitys"

    invoke-static {v1, v3}, Lcom/baidu/mapapi/search/route/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e(Ljava/util/List;)V

    const-string v3, "endpoints"

    invoke-static {v1, v3, p0}, Lcom/baidu/mapapi/search/route/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b(Ljava/util/List;)V

    const-string p0, "waypoints_result"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "waypointcitys"

    invoke-static {v5, v6}, Lcom/baidu/mapapi/search/route/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v6, "waypoints"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/baidu/mapapi/search/route/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->f(Ljava/util/List;)V

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->c(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_7
    :goto_1
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    aget-char v4, p0, v2

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    aget-char v4, p0, v2

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    aget-char v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
