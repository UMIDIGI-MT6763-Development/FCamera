.class public Lcom/freeme/camera/common/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationManager"


# instance fields
.field mLocationProvider:Lcom/freeme/camera/common/LocationProvider;

.field private mRecordLocation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocationManager"

    const-string v1, "Using legacy location provider."

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/freeme/camera/common/LegacyLocationProvider;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/LegacyLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/LocationManager;->mLocationProvider:Lcom/freeme/camera/common/LocationProvider;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/LocationManager;->mLocationProvider:Lcom/freeme/camera/common/LocationProvider;

    invoke-interface {v0}, Lcom/freeme/camera/common/LocationProvider;->disconnect()V

    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/LocationManager;->mLocationProvider:Lcom/freeme/camera/common/LocationProvider;

    invoke-interface {v0}, Lcom/freeme/camera/common/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public recordLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/common/LocationManager;->mRecordLocation:Z

    return-void
.end method
