.class Lcom/baidu/mapapi/search/poi/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiResult;
    .locals 6

    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiResult;-><init>()V

    if-eqz p0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "citys"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/core/CityInfo;-><init>()V

    const-string v5, "num"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/baidu/mapapi/search/core/CityInfo;->num:I

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/poi/PoiResult;->c(Ljava/util/List;)V

    :cond_3
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_KEYWORD:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_2
    iput-object p0, v0, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :cond_4
    :goto_3
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;II)Lcom/baidu/mapapi/search/poi/PoiResult;
    .locals 9

    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiResult;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "total"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :cond_2
    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/poi/PoiResult;->b(I)V

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/poi/PoiResult;->d(I)V

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/poi/PoiResult;->c(I)V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->a(I)V

    const/4 p1, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    div-int v2, p0, p2

    rem-int/2addr p0, p2

    if-lez p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, p1

    :goto_1
    add-int/2addr v2, p0

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/poi/PoiResult;->b(I)V

    :cond_4
    const-string p0, "current_city"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_5

    const-string p2, "name"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_5
    const-string p0, "pois"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_a

    move v4, p1

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/core/PoiInfo;-><init>()V

    if-nez v5, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    const-string v7, "addr"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    const-string v7, "uid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    const-string v7, "tel"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->fromInt(I)Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v7, "pano"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v3, :cond_7

    move v7, v3

    goto :goto_3

    :cond_7
    move v7, p1

    :goto_3
    iput-boolean v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    iget-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    sget-object v8, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->BUS_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    if-eq v7, v8, :cond_8

    iget-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    sget-object v8, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->SUBWAY_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    if-eq v7, v8, :cond_8

    const-string v7, "geo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    :cond_8
    iput-object p2, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    const-string v7, "place"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, "src_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cater"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "detail"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-boolean v3, v6, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    :cond_9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_b

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/poi/PoiResult;->a(Ljava/util/List;)V

    :cond_b
    const-string p0, "addrs"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_d

    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_d

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;-><init>()V

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->name:Ljava/lang/String;

    const-string v4, "addr"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->address:Ljava/lang/String;

    const-string v4, "geo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_e

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/search/poi/PoiResult;->b(Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/search/poi/PoiResult;->a(Z)V

    :cond_e
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
