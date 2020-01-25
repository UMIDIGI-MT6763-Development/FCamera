.class Lcom/freeme/camera/common/location/LocationSecurityService$1;
.super Landroid/os/Handler;
.source "LocationSecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/location/LocationSecurityService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/location/LocationSecurityService;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/location/LocationSecurityService;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {v0}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$000(Lcom/freeme/camera/common/location/LocationSecurityService;)Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->stopLocation()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {v0}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$100(Lcom/freeme/camera/common/location/LocationSecurityService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/location/ILocationListener;

    :try_start_0
    invoke-interface {v1, p1}, Lcom/freeme/camera/location/ILocationListener;->getLocationStrCompleted(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {v0}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$000(Lcom/freeme/camera/common/location/LocationSecurityService;)Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->stopLocation()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {v0}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$100(Lcom/freeme/camera/common/location/LocationSecurityService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/location/ILocationListener;

    :try_start_1
    invoke-interface {v1, p1}, Lcom/freeme/camera/location/ILocationListener;->getCoordinatesCompleted(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {v0}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$100(Lcom/freeme/camera/common/location/LocationSecurityService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/location/ILocationListener;

    :try_start_2
    invoke-interface {v1, p1}, Lcom/freeme/camera/location/ILocationListener;->getLocationStrByCooCompleted(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {p1}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$000(Lcom/freeme/camera/common/location/LocationSecurityService;)Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->startLocation(I)V

    goto :goto_3

    :pswitch_4
    const-string p1, "LocationSecurityService"

    const-string v0, "GETCOORDINATES"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {p1}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$000(Lcom/freeme/camera/common/location/LocationSecurityService;)Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->startLocation(I)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "longitude"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$1;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    iget-object p1, p1, Lcom/freeme/camera/common/location/LocationSecurityService;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    :cond_0
    :goto_3
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
