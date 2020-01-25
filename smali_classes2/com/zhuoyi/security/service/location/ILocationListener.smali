.class public interface abstract Lcom/zhuoyi/security/service/location/ILocationListener;
.super Ljava/lang/Object;
.source "ILocationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhuoyi/security/service/location/ILocationListener$Stub;,
        Lcom/zhuoyi/security/service/location/ILocationListener$Default;
    }
.end annotation


# virtual methods
.method public abstract getCoordinatesCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocationStrByCooCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocationStrCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
