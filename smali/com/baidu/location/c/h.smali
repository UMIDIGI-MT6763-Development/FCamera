.class final Lcom/baidu/location/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/h$a;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "CoorType"

    const-string v1, "Time"

    const-string v2, "LocType"

    const-string v3, "Longitude"

    const-string v4, "Latitude"

    const-string v5, "Radius"

    const-string v6, "NetworkLocationType"

    const-string v7, "Country"

    const-string v8, "CountryCode"

    const-string v9, "Province"

    const-string v10, "City"

    const-string v11, "CityCode"

    const-string v12, "District"

    const-string v13, "Street"

    const-string v14, "StreetNumber"

    const-string v15, "PoiList"

    const-string v16, "LocationDescription"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c/h;->b:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/baidu/location/c/h;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static a(Lcom/baidu/location/BDLocation;)Landroid/database/Cursor;
    .locals 12

    sget-object v0, Lcom/baidu/location/c/h;->c:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/baidu/location/c/h;->b:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/location/c/h;->b:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CoorType"

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "gcj02"

    aput-object v4, v2, v3

    const-string v3, "Time"

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    aput-object v0, v2, v3

    const-string v0, "LocType"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Longitude"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Latitude"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Radius"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "NetworkLocationType"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    iget-object v6, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    iget-object v8, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    iget-object v9, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    iget-object v10, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_0
    const-string v11, "Country"

    invoke-virtual {v1, v11}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    aput-object v4, v2, v11

    const-string v4, "CountryCode"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v5, v2, v4

    const-string v4, "Province"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v6, v2, v4

    const-string v4, "City"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v7, v2, v4

    const-string v4, "CityCode"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v8, v2, v4

    const-string v4, "District"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v9, v2, v4

    const-string v4, "Street"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v10, v2, v4

    const-string v4, "StreetNumber"

    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    aput-object v0, v2, v4

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "PoiList"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    aput-object v3, v2, v0

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/location/Poi;

    invoke-virtual {v5}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v5, ";|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "PoiList"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_2
    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocationDescription"

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1
.end method

.method static a(Landroid/database/Cursor;)Lcom/baidu/location/BDLocation;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1}, Lcom/baidu/location/BDLocation;-><init>()V

    if-eqz v0, :cond_14

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "LocType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "LocType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Latitude"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_1

    const-string v5, "Latitude"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "Longitude"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v3, :cond_2

    const-string v6, "Longitude"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const-string v7, "CoorType"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_3

    const-string v7, "CoorType"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const-string v8, "NetworkLocationType"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v3, :cond_4

    const-string v8, "NetworkLocationType"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const-string v9, "Radius"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v3, :cond_5

    const-string v9, "Radius"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    const-string v10, "Time"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v3, :cond_6

    const-string v10, "Time"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    const-string v11, "Country"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v3, :cond_7

    const-string v11, "Country"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    :goto_7
    const-string v12, "CountryCode"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v3, :cond_8

    const-string v12, "CountryCode"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    const-string v13, "Province"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v3, :cond_9

    const-string v13, "Province"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    const-string v14, "City"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v3, :cond_a

    const-string v14, "City"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    :cond_a
    const/4 v14, 0x0

    :goto_a
    const-string v15, "CityCode"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v3, :cond_b

    const-string v15, "CityCode"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    :goto_b
    const-string v4, "District"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_c

    const-string v4, "District"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v8

    goto :goto_c

    :cond_c
    move-object/from16 v16, v8

    const/4 v4, 0x0

    :goto_c
    const-string v8, "Street"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v3, :cond_d

    const-string v8, "Street"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v6

    goto :goto_d

    :cond_d
    move-object/from16 v17, v6

    const/4 v8, 0x0

    :goto_d
    const-string v6, "StreetNumber"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v3, :cond_e

    const-string v6, "StreetNumber"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    new-instance v3, Lcom/baidu/location/Address$Builder;

    invoke-direct {v3}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v3, v11}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v3

    const-string v4, "PoiList"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_11

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "PoiList"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    :try_start_0
    const-string v8, "\\|"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move v11, v8

    :goto_f
    array-length v12, v6

    if-ge v11, v12, :cond_10

    aget-object v12, v6, v11

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_f

    new-instance v13, Lcom/baidu/location/Poi;

    aget-object v14, v12, v8

    const/4 v15, 0x1

    aget-object v15, v12, v15

    const/16 v18, 0x2

    aget-object v12, v12, v18

    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v9

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v13, v14, v15, v8, v9}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_10

    :cond_f
    move-object/from16 v18, v9

    :goto_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v18

    const/4 v8, 0x0

    goto :goto_f

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    throw v0

    :catch_0
    move-object/from16 v18, v9

    :catch_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_12

    goto :goto_11

    :cond_10
    move-object/from16 v18, v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_12

    :goto_11
    goto :goto_12

    :cond_11
    move-object/from16 v18, v9

    :goto_12
    const/4 v4, 0x0

    :cond_12
    const-string v6, "LocationDescription"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_13

    const-string v6, "LocationDescription"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v1, v10}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    invoke-virtual {v1, v7}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    move-object/from16 v8, v16

    invoke-virtual {v1, v8}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    goto :goto_14

    :cond_14
    const/16 v0, 0x43

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :goto_14
    return-object v1
.end method

.method static a(Lcom/baidu/location/BDLocation;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x43

    if-ne v3, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "&ofl=%s|%d|%f|%f|%d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "1"

    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x3

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, p1

    const/4 p1, 0x4

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ofaddr="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/baidu/location/Poi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "&ofpoi=%s|%s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v0

    invoke-static {p1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object p0, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "&pack=%s&sdk=%.3f"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    aput-object v4, v1, v2

    const v2, 0x40c428f6    # 6.13f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "&ofl=%s|%d"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "1"

    aput-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method static a(Lcom/baidu/location/BDLocation;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/h$a;)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string p1, "&ofcl=0"

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "&ofcl=1|%f|%f|%d"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p0, :cond_1

    const-string p0, "&ofwf=0"

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "&ofwf=1|%f|%f|%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_2

    iget-boolean p0, p2, Lcom/baidu/location/c/h$a;->e:Z

    if-eqz p0, :cond_2

    const-string p0, "&rgcn=1"

    goto :goto_2

    :cond_2
    const-string p0, "&rgcn=0"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_3

    iget-boolean p0, p2, Lcom/baidu/location/c/h$a;->d:Z

    if-eqz p0, :cond_3

    const-string p0, "&poin=1"

    goto :goto_3

    :cond_3
    const-string p0, "&poin=0"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_4

    iget-boolean p0, p2, Lcom/baidu/location/c/h$a;->h:Z

    if-eqz p0, :cond_4

    const-string p0, "&desc=1"

    goto :goto_4

    :cond_4
    const-string p0, "&desc=0"

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_5

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "&aps=%d"

    new-array v1, v3, [Ljava/lang/Object;

    iget p2, p2, Lcom/baidu/location/c/h$a;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Ljava/lang/String;ZI)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/baidu/location/h/b;->new(Lcom/baidu/location/h/h;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0x1e

    invoke-virtual {p1, p0}, Lcom/baidu/location/h/f;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string p0, "-loc"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p2, :cond_4

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "%f;%f;%d;%s"

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p3, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p3, v1

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p0, p1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-com"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p4, :cond_5

    const-string p0, "-log"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object p0, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string p1, "all"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "-rgc"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean p0, Lcom/baidu/location/b/k;->bP:Z

    if-eqz p0, :cond_7

    const-string p0, "-poi"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-boolean p0, Lcom/baidu/location/b/k;->bX:Z

    if-eqz p0, :cond_8

    const-string p0, "-des"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "true"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string p0, "-minap"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method
