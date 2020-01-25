.class public Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field private static final GEO_CACHE_FILE:Ljava/lang/String; = "rev_geocoding"

.field private static final GEO_CACHE_MAX_BYTES:I = 0x7d000

.field private static final GEO_CACHE_MAX_ENTRIES:I = 0x3e8

.field private static final GEO_CACHE_VERSION:I = 0x0

.field public static final LAT_MAX:I = 0x5a

.field public static final LAT_MIN:I = -0x5a

.field public static final LON_MAX:I = 0xb4

.field public static final LON_MIN:I = -0xb4

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"

.field private static sCurrentAddress:Landroid/location/Address;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const-string v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/freeme/camera/common/location/addressResovler/utils/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeoCache:Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    return-object p1
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static final toMile(D)D
    .locals 2

    const-wide v0, 0x4099240000000000L    # 1609.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeAddress(Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    iget-wide v3, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    iget-wide v7, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iget-wide v9, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    iget-wide v11, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iget-wide v13, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    iget-wide v13, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide v15, v1

    iget-wide v1, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    sub-double/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v11, v1

    if-gez v1, :cond_0

    iget-wide v1, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    iget-wide v3, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    iget-wide v7, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    iget-wide v9, v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide v11, v1

    move-wide v13, v3

    move-wide v15, v7

    move-wide/from16 v17, v9

    goto :goto_0

    :cond_0
    move-wide v13, v3

    move-wide/from16 v17, v9

    move-wide v11, v15

    move-wide v15, v7

    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v11

    move-wide v3, v13

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v7

    move-wide v1, v15

    move-wide/from16 v3, v17

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    if-nez v7, :cond_1

    move-object v7, v0

    :cond_1
    if-nez v0, :cond_2

    move-object v8, v7

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    const/4 v9, 0x0

    if-eqz v7, :cond_27

    if-nez v8, :cond_3

    goto/16 :goto_11

    :cond_3
    iget-object v0, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    iget-object v2, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    return-object v9

    :cond_4
    move-object v3, v9

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v9

    :goto_3
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    const-string v19, ""

    const-string v20, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v21

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto :goto_5

    :cond_8
    sput-object v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    goto :goto_6

    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    :goto_6
    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-wide/from16 v21, v15

    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_7

    :cond_a
    move-object v0, v15

    goto/16 :goto_b

    :cond_b
    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_d

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_c
    move-object v4, v9

    :cond_d
    :goto_8
    const/4 v9, 0x0

    move-object/from16 v24, v4

    move-object v4, v3

    move-object/from16 v3, v24

    goto :goto_a

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_f
    move-object v3, v5

    :cond_10
    :goto_9
    move-object v5, v9

    move-object v10, v15

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v7, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    invoke-virtual {v8, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v15, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string v9, "null"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_11
    return-object v4

    :cond_12
    invoke-virtual {v7}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v0, v3}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return-object v0

    :cond_13
    move-object v9, v5

    move-object v0, v10

    move-object/from16 v3, v16

    move-object v4, v3

    :goto_b
    invoke-direct {v6, v3, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_16

    move-object/from16 v23, v0

    const-string v0, ""

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_c

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_15
    :goto_c
    return-object v15

    :cond_16
    move-object/from16 v23, v0

    :cond_17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v3, v4

    :cond_18
    const-string v0, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v4, v3

    :cond_19
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_1b
    const/4 v0, 0x1

    new-array v2, v0, [F

    move-wide/from16 v15, v21

    move-object/from16 v19, v2

    invoke-static/range {v11 .. v19}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->toMile(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1d

    invoke-direct {v6, v7, v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    return-object v2

    :cond_1c
    invoke-direct {v6, v8, v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    invoke-direct {v6, v5, v9}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    return-object v0

    :cond_1f
    move-object/from16 v15, v23

    invoke-direct {v6, v10, v15}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_21

    move-object v0, v10

    :cond_21
    if-nez v1, :cond_22

    move-object v1, v15

    :cond_22
    if-eqz v0, :cond_26

    if-nez v1, :cond_23

    goto :goto_10

    :cond_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-gt v2, v3, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_24

    goto :goto_e

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_25
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_26
    :goto_10
    const/4 v0, 0x0

    return-object v0

    :cond_27
    :goto_11
    move-object v0, v9

    return-object v0
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 14

    move-object v6, p0

    const-wide v0, 0x4056800000000000L    # 90.0

    add-double v2, p1, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double v0, p3, v0

    add-double/2addr v2, v0

    const-wide v0, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v0

    double-to-long v0, v2

    const/4 v13, 0x0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v2, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeoCache:Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

    if-eqz v2, :cond_0

    iget-object v2, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeoCache:Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

    invoke-virtual {v2, v0, v1}, Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;->lookup(J)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v13

    :goto_0
    iget-object v3, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    goto :goto_1

    :cond_4
    move-object v2, v13

    :goto_1
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v1, Landroid/location/Address;

    invoke-direct {v1, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_6

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_5

    :cond_7
    :goto_3
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v7, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v12, 0x1

    move-wide v8, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_4
    if-ge v4, v7, :cond_9

    invoke-virtual {v2, v4}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    iget-object v4, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeoCache:Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

    if-eqz v4, :cond_a

    iget-object v4, v6, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->mGeoCache:Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v0, v1, v3}, Lcom/freeme/camera/common/location/addressResovler/utils/BlobCache;->insert(J[B)V

    :cond_a
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_5

    :cond_b
    move-object v1, v13

    :goto_5
    return-object v1

    :cond_c
    :goto_6
    return-object v13

    :catch_0
    return-object v13
.end method
