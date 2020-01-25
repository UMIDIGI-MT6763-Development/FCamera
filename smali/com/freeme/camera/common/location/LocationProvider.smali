.class public Lcom/freeme/camera/common/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/location/LocationProvider$LocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_UPDATE_TIME:I = 0x1388

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field mLocationListeners:[Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationPermission:Lcom/freeme/camera/common/permission/PermissionManager;

.field private mRecordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/location/LocationProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    new-instance v1, Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/location/LocationProvider$LocationListener;-><init>(Lcom/freeme/camera/common/location/LocationProvider;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/location/LocationProvider$LocationListener;-><init>(Lcom/freeme/camera/common/location/LocationProvider;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/freeme/camera/common/permission/PermissionManager;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationPermission:Lcom/freeme/camera/common/permission/PermissionManager;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method private startReceivingLocationUpdates()V
    .locals 9

    sget-object v0, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "startReceivingLocationUpdates ++++"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "network"

    const-wide/16 v3, 0x1388

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider does not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x1388

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    const/4 v1, 0x0

    aget-object v8, v0, v1

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider does not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "startReceivingLocationUpdates----"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "stopReceivingLocationUpdates++++"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationManager:Landroid/location/LocationManager;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/location/LocationProvider;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "stopReceivingLocationUpdates----"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mRecordLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationListeners:[Lcom/freeme/camera/common/location/LocationProvider$LocationListener;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/freeme/camera/common/location/LocationProvider$LocationListener;->current()Landroid/location/Location;

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

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mLocationPermission:Lcom/freeme/camera/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/location/LocationProvider;->mRecordLocation:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/freeme/camera/common/location/LocationProvider;->mRecordLocation:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/common/location/LocationProvider;->startReceivingLocationUpdates()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/common/location/LocationProvider;->stopReceivingLocationUpdates()V

    :cond_2
    :goto_0
    return-void
.end method
