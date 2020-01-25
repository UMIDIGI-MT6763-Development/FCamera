.class public Lcom/freeme/camera/common/location/google/GoogleLocationAgent;
.super Ljava/lang/Object;
.source "GoogleLocationAgent.java"

# interfaces
.implements Lcom/freeme/camera/common/location/ILocationAgent;


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleLocationAgent"


# instance fields
.field private isOn:Z

.field private locationManager:Lcom/freeme/camera/common/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mLibLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    iput-object p1, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/freeme/camera/common/LocationManager;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/LocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    return-void
.end method


# virtual methods
.method public getCurLatitude()D
    .locals 5

    const-string v0, "GoogleLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationManager== null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {v0}, Lcom/freeme/camera/common/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    const-string v3, "GoogleLocationAgent"

    const-string v4, "location== null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-string v1, "GoogleLocationAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurLatitude=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurLongitude()D
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/common/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLibLocation()Ljava/lang/String;
    .locals 3

    const-string v0, "GoogleLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLibLocation=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->mLibLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->mLibLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getisLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->isOn:Z

    return v0
.end method

.method public setisLocation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "GoogleLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->isOn:Z

    iget-object v0, p0, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->locationManager:Lcom/freeme/camera/common/LocationManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/LocationManager;->recordLocation(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->setisLocation(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/common/location/google/GoogleLocationAgent;->setisLocation(Z)V

    return-void
.end method
