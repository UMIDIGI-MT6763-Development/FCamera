.class public interface abstract Lcom/freeme/camera/location/ILocationSecurityService;
.super Ljava/lang/Object;
.source "ILocationSecurityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/location/ILocationSecurityService$Stub;,
        Lcom/freeme/camera/location/ILocationSecurityService$Default;
    }
.end annotation


# virtual methods
.method public abstract getCoordinates()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocationStrFromSecurity()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocationStrFromSecurityByCoo(DD)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract listenUserEvent(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
