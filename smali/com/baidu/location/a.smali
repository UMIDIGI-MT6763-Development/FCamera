.class final Lcom/baidu/location/a;
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
.method public a(Landroid/os/Parcel;)Lcom/baidu/location/BDLocation;
    .locals 2

    new-instance v0, Lcom/baidu/location/BDLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;Lcom/baidu/location/a;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/location/BDLocation;
    .locals 0

    new-array p1, p1, [Lcom/baidu/location/BDLocation;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/a;->a(Landroid/os/Parcel;)Lcom/baidu/location/BDLocation;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/a;->a(I)[Lcom/baidu/location/BDLocation;

    move-result-object p1

    return-object p1
.end method
