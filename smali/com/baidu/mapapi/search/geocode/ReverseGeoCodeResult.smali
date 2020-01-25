.class public Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

.field private d:Lcom/baidu/mapapi/model/LatLng;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/geocode/c;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/geocode/c;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    const-class v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    sget-object v0, Lcom/baidu/mapapi/search/core/PoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->e:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    return-void
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method a(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->e:Ljava/util/List;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    return-object v0
.end method

.method public getBusinessCircle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
