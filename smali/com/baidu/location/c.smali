.class final Lcom/baidu/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/location/Poi;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    new-instance p1, Lcom/baidu/location/Poi;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    return-object p1
.end method

.method public a(I)[Lcom/baidu/location/Poi;
    .locals 0

    new-array p1, p1, [Lcom/baidu/location/Poi;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/c;->a(Landroid/os/Parcel;)Lcom/baidu/location/Poi;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/c;->a(I)[Lcom/baidu/location/Poi;

    move-result-object p1

    return-object p1
.end method
