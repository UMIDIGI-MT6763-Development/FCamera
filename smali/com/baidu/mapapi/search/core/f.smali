.class final Lcom/baidu/mapapi/search/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/core/SearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/search/core/SearchResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 0

    new-array p1, p1, [Lcom/baidu/mapapi/search/core/SearchResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/core/f;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/core/f;->a(I)[Lcom/baidu/mapapi/search/core/SearchResult;

    move-result-object p1

    return-object p1
.end method
