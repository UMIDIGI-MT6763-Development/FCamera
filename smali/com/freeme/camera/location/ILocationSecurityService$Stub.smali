.class public abstract Lcom/freeme/camera/location/ILocationSecurityService$Stub;
.super Landroid/os/Binder;
.source "ILocationSecurityService.java"

# interfaces
.implements Lcom/freeme/camera/location/ILocationSecurityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/location/ILocationSecurityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/location/ILocationSecurityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.freeme.camera.location.ILocationSecurityService"

.field static final TRANSACTION_getCoordinates:I = 0x4

.field static final TRANSACTION_getLocationStrFromSecurity:I = 0x5

.field static final TRANSACTION_getLocationStrFromSecurityByCoo:I = 0x3

.field static final TRANSACTION_listenUserEvent:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.freeme.camera.location.ILocationSecurityService"

    invoke-virtual {p0, p0, v0}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/freeme/camera/location/ILocationSecurityService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.freeme.camera.location.ILocationSecurityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/freeme/camera/location/ILocationSecurityService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/freeme/camera/location/ILocationSecurityService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/freeme/camera/location/ILocationSecurityService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/freeme/camera/location/ILocationSecurityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/freeme/camera/location/ILocationSecurityService;
    .locals 1

    sget-object v0, Lcom/freeme/camera/location/ILocationSecurityService$Stub$Proxy;->sDefaultImpl:Lcom/freeme/camera/location/ILocationSecurityService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/freeme/camera/location/ILocationSecurityService;)Z
    .locals 1

    sget-object v0, Lcom/freeme/camera/location/ILocationSecurityService$Stub$Proxy;->sDefaultImpl:Lcom/freeme/camera/location/ILocationSecurityService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/freeme/camera/location/ILocationSecurityService$Stub$Proxy;->sDefaultImpl:Lcom/freeme/camera/location/ILocationSecurityService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.freeme.camera.location.ILocationSecurityService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->getLocationStrFromSecurity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->getCoordinates()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->getLocationStrFromSecurityByCoo(DD)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/freeme/camera/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/freeme/camera/location/ILocationListener;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->unregisterListener(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/freeme/camera/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/freeme/camera/location/ILocationListener;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->listenUserEvent(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
