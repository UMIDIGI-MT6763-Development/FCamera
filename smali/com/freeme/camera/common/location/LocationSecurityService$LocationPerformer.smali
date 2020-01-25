.class public Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;
.super Ljava/lang/Object;
.source "LocationSecurityService.java"

# interfaces
.implements Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/LocationSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationPerformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mMyLocationListener:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;

.field private msg_action:I

.field final synthetic this$0:Lcom/freeme/camera/common/location/LocationSecurityService;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/location/LocationSecurityService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    iput p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->msg_action:I

    iput-object p2, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/baidu/location/LocationClient;

    invoke-direct {p1, p2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    new-instance p1, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;

    invoke-direct {p1, p0}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;-><init>(Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;)V

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mMyLocationListener:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;

    return-void
.end method

.method private InitLocation()V
    .locals 2

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->msg_action:I

    return p0
.end method


# virtual methods
.method public onGetGeoCodeResult(Lcom/baidu/mapapi/search/geocode/GeoCodeResult;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onGetReverseGeoCodeResult(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/freeme/camera/common/location/LocationInfo;

    invoke-direct {v1}, Lcom/freeme/camera/common/location/LocationInfo;-><init>()V

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "sucess"

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/location/LocationInfo;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/location/LocationInfo;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setAddressStr(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->district:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->streetNumber:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/freeme/camera/common/location/LocationInfo;->setStreetNumber(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "error"

    invoke-virtual {v1, p1}, Lcom/freeme/camera/common/location/LocationInfo;->setMsg(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/freeme/camera/common/location/LocationUtils;->createJsonString(Lcom/freeme/camera/common/location/LocationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/freeme/camera/common/location/LocationSecurityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startLocation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mMyLocationListener:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mMyLocationListener:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    iput p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->msg_action:I

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->requestLocation()I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->InitLocation()V

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->start()V

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->requestLocation()I

    :goto_0
    return-void
.end method

.method public stopLocation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mMyLocationListener:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    :cond_1
    return-void
.end method
