.class public Lcom/baidu/mapapi/search/sug/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionResult;
    .locals 13

    new-instance v0, Lcom/baidu/mapapi/search/sug/SuggestionResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/sug/SuggestionResult;-><init>()V

    if-eqz p0, :cond_7

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "cityname"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v2, "poiname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "districtname"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "pt"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "poiid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/search/sug/SuggestionResult;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_6

    new-instance v8, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    invoke-direct {v8}, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    :cond_3
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "y"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-wide/16 v11, 0x0

    invoke-direct {v10, v11, v12, v11, v12}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    const-string v11, "x"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-double v11, v11

    invoke-virtual {v10, v11, v12}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v11, "y"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-int v9, v11

    int-to-double v11, v9

    invoke-virtual {v10, v11, v12}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    invoke-static {v10}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    :cond_5
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_6
    return-object v0

    :cond_7
    :goto_1
    sget-object p0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p0, v0, Lcom/baidu/mapapi/search/sug/SuggestionResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0
.end method
