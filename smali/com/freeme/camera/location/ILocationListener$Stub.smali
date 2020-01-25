.class public abstract Lcom/freeme/camera/location/ILocationListener$Stub;
.super Landroid/os/Binder;
.source "ILocationListener.java"

# interfaces
.implements Lcom/freeme/camera/location/ILocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/location/ILocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/location/ILocationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.freeme.camera.location.ILocationListener"

.field static final TRANSACTION_getCoordinatesCompleted:I = 0x3

.field static final TRANSACTION_getLocationStrByCooCompleted:I = 0x1

.field static final TRANSACTION_getLocationStrCompleted:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.freeme.camera.location.ILocationListener"

    invoke-virtual {p0, p0, v0}, Lcom/freeme/camera/location/ILocationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/freeme/camera/location/ILocationListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.freeme.camera.location.ILocationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/freeme/camera/location/ILocationListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/freeme/camera/location/ILocationListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/freeme/camera/location/ILocationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/freeme/camera/location/ILocationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/freeme/camera/location/ILocationListener;
    .locals 1

    sget-object v0, Lcom/freeme/camera/location/ILocationListener$Stub$Proxy;->sDefaultImpl:Lcom/freeme/camera/location/ILocationListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/freeme/camera/location/ILocationListener;)Z
    .locals 1

    sget-object v0, Lcom/freeme/camera/location/ILocationListener$Stub$Proxy;->sDefaultImpl:Lcom/freeme/camera/location/ILocationListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/freeme/camera/location/ILocationListener$Stub$Proxy;->sDefaultImpl:Lcom/freeme/camera/location/ILocationListener;

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

    const-string v0, "com.freeme.camera.location.ILocationListener"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/location/ILocationListener$Stub;->getCoordinatesCompleted(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/location/ILocationListener$Stub;->getLocationStrCompleted(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/location/ILocationListener$Stub;->getLocationStrByCooCompleted(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
