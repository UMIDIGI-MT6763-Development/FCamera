.class public Lcom/baidu/mapapi/search/poi/PoiDetailResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/poi/PoiDetailResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/baidu/mapapi/model/LatLng;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:D

.field l:D

.field m:D

.field n:D

.field o:D

.field p:D

.field q:D

.field r:D

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/poi/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->c:Ljava/lang/String;

    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->k:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->l:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->m:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->n:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->o:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->p:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->q:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->r:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->s:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->u:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->v:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->w:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->a:I

    iget p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->a:I

    if-nez p1, :cond_1

    const-string p1, "message"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->b:Ljava/lang/String;

    const-string p1, "result"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->c:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "lng"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->d:Lcom/baidu/mapapi/model/LatLng;

    const-string v1, "address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->e:Ljava/lang/String;

    const-string v1, "telephone"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->f:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->g:Ljava/lang/String;

    const-string v1, "detail_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "tag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->h:Ljava/lang/String;

    const-string v1, "detail_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->i:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->j:Ljava/lang/String;

    const-string v1, "price"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->k:D

    const-string v1, "overall_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->l:D

    const-string v1, "taste_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->m:D

    const-string v1, "service_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->n:D

    const-string v1, "environment_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->o:D

    const-string v1, "facility_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->p:D

    const-string v1, "hygiene_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->q:D

    const-string v1, "technology_rating"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->r:D

    const-string v1, "image_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->s:I

    const-string v1, "groupon_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->t:I

    const-string v1, "comment_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->u:I

    const-string v1, "favorite_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->v:I

    const-string v1, "checkin_num"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->w:I

    const-string v1, "shop_hours"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->x:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckinNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->w:I

    return v0
.end method

.method public getCommentNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->u:I

    return v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironmentRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->o:D

    return-wide v0
.end method

.method public getFacilityRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->p:D

    return-wide v0
.end method

.method public getFavoriteNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->v:I

    return v0
.end method

.method public getGrouponNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->t:I

    return v0
.end method

.method public getHygieneRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->q:D

    return-wide v0
.end method

.method public getImageNum()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->s:I

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOverallRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->l:D

    return-wide v0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->k:D

    return-wide v0
.end method

.method public getServiceRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->n:D

    return-wide v0
.end method

.method public getShopHours()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTasteRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->m:D

    return-wide v0
.end method

.method public getTechnologyRating()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->r:D

    return-wide v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->g:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->k:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->l:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->m:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->n:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->o:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->p:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->q:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->r:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
