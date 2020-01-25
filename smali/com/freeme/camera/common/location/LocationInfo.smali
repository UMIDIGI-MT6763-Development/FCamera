.class public Lcom/freeme/camera/common/location/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# instance fields
.field private addressStr:Ljava/lang/String;

.field private cityStr:Ljava/lang/String;

.field private districtStr:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private msg:Ljava/lang/String;

.field private provinceStr:Ljava/lang/String;

.field private streetNumberStr:Ljava/lang/String;

.field private streetStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->addressStr:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->longitude:D

    iput-wide v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->latitude:D

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->msg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->provinceStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->cityStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->districtStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetNumberStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->addressStr:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->longitude:D

    iput-wide v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->latitude:D

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->msg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->provinceStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->cityStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->districtStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetStr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetNumberStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->addressStr:Ljava/lang/String;

    float-to-double p1, p2

    iput-wide p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->longitude:D

    float-to-double p1, p3

    iput-wide p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->latitude:D

    iput-object p4, p0, Lcom/freeme/camera/common/location/LocationInfo;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddressStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->addressStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->cityStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->districtStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->longitude:D

    return-wide v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->provinceStr:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetStr:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetNumberStr:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->addressStr:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->cityStr:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->districtStr:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->longitude:D

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->provinceStr:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetStr:Ljava/lang/String;

    return-void
.end method

.method public setStreetNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetNumberStr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationInfo [addressStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->addressStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", provinceStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->provinceStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cityStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->cityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", districtStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->districtStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streetStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streetNumberStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationInfo;->streetNumberStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
