.class public Lcom/mediatek/accessor/util/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# static fields
.field private static final INVALID_VALUE_DOUBLE:D = -1.0

.field private static final INVALID_VALUE_INT:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/util/JsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string v1, "<JsonParser> exception"

    invoke-static {v0, v1, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string v1, "<JsonParser> exception"

    invoke-static {v0, v1, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getArrayLength(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    return v1

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getArrayLength> exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string v0, "<getArrayLength> error!!"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getInt2DArrayFromObject(Ljava/lang/String;Ljava/lang/String;)[[I
    .locals 11

    const/4 v0, 0x0

    check-cast v0, [[I

    iget-object v1, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    filled-new-array {v2, v4}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_3

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    move v8, v3

    :goto_2
    if-ge v8, v4, :cond_2

    aget-object v9, v5, v6

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    aput v10, v9, v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v5

    :cond_4
    return-object v0

    :catch_0
    sget-object v1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getInt2DArrayFromObject> exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    :goto_3
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getInt2DArrayFromObject> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIntArrayFromObject(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6

    iget-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v3, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :cond_3
    return-object v1

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getIntArrayFromObject> exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    :goto_2
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getIntArrayFromObject> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getObjectPropertyValueFromArray(Ljava/lang/String;ILjava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ltz p2, :cond_2

    if-le p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getObjectPropertyValueFromArray> index error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_3
    return v1

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getObjectPropertyValueFromArray> exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getObjectPropertyValueFromArray> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getValueBooleanFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getValueBooleanFromObject> exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_1
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getValueBooleanFromObject> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getValueDoubleFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-wide v1

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getValueDoubleFromObject> exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_3
    :goto_1
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getValueDoubleFromObject> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v1

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getValueIntFromObject> exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getValueIntFromObject> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getValueStringFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/mediatek/accessor/util/JsonParser;->mJsonObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    sget-object v0, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getValueStringFromObject> exception, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/mediatek/accessor/util/JsonParser;->TAG:Ljava/lang/String;

    const-string p2, "<getValueStringFromObject> error!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method
