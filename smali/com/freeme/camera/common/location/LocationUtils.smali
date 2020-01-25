.class public Lcom/freeme/camera/common/location/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field public static final addresKey:Ljava/lang/String; = "addr"

.field public static final cityKey:Ljava/lang/String; = "city"

.field public static final districtKey:Ljava/lang/String; = "dist"

.field public static final latitudeKey:Ljava/lang/String; = "latitude"

.field public static final longitudeKey:Ljava/lang/String; = "longitude"

.field public static final msgKey:Ljava/lang/String; = "msg"

.field public static final provinceKey:Ljava/lang/String; = "prov"

.field public static final streetKey:Ljava/lang/String; = "st"

.field public static final streetNumberKey:Ljava/lang/String; = "stNb"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createJsonString(Lcom/freeme/camera/common/location/LocationInfo;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "addr"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getAddressStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prov"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "city"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dist"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stNb"

    invoke-virtual {p0}, Lcom/freeme/camera/common/location/LocationInfo;->getStreetNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
