.class public Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationSecurityService.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;->this$1:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer$MyLocationListener;->this$1:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    invoke-static {v1}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;->access$200(Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/freeme/camera/common/location/LocationInfo;

    invoke-direct {v1}, Lcom/freeme/camera/common/location/LocationInfo;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x41

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x42

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "sucess"

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setAddressStr(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/location/LocationInfo;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/location/LocationInfo;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreetNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/location/LocationInfo;->setStreetNumber(Ljava/lang/String;)V

    :goto_1
    const-string v2, "LocationSecurityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/freeme/camera/common/location/LocationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/freeme/camera/common/location/LocationUtils;->createJsonString(Lcom/freeme/camera/common/location/LocationInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p1, Lcom/freeme/camera/common/location/LocationSecurityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
