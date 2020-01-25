.class public interface abstract Lcom/freeme/camera/common/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/LocationProvider$OnConnectionFailedListener;
    }
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract recordLocation(Z)V
.end method
