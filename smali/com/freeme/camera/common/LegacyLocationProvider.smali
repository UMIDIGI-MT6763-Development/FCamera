.class public Lcom/freeme/camera/common/LegacyLocationProvider;
.super Ljava/lang/Object;
.source "LegacyLocationProvider.java"

# interfaces
.implements Lcom/freeme/camera/common/LocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mLocationListeners:[Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRecordLocation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    new-instance v1, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;-><init>(Lcom/freeme/camera/common/LegacyLocationProvider;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;-><init>(Lcom/freeme/camera/common/LegacyLocationProvider;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    iput-object p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private startReceivingLocationUpdates()V
    .locals 13

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "network"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v7, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v8, "gps"

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    const/4 v1, 0x0

    aget-object v12, v0, v1

    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 0

    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mRecordLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->current()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public recordLocation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mRecordLocation:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider;->mRecordLocation:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/common/LegacyLocationProvider;->startReceivingLocationUpdates()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/common/LegacyLocationProvider;->stopReceivingLocationUpdates()V

    :cond_1
    :goto_0
    return-void
.end method
