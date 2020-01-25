.class Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;
.super Ljava/lang/Object;
.source "LegacyLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/LegacyLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/freeme/camera/common/LegacyLocationProvider;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/LegacyLocationProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->this$0:Lcom/freeme/camera/common/LegacyLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mValid:Z

    iput-object p2, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mProvider:Ljava/lang/String;

    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mValid:Z

    iget-object v0, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mValid:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/common/LegacyLocationProvider$LocationListener;->mValid:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
