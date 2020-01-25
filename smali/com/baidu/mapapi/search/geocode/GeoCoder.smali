.class public Lcom/baidu/mapapi/search/geocode/GeoCoder;
.super Lcom/baidu/mapapi/search/core/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/geocode/GeoCoder$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->c:Z

    iput v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->d:I

    iput v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->e:I

    new-instance v1, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v2, Lcom/baidu/mapapi/search/geocode/GeoCoder$a;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder$a;-><init>(Lcom/baidu/mapapi/search/geocode/GeoCoder;Lcom/baidu/mapapi/search/geocode/GeoCoder$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/geocode/GeoCoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/geocode/GeoCoder;)Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/geocode/GeoCoder;)I
    .locals 0

    iget p0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->e:I

    return p0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/geocode/GeoCoder;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public geocode(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comapi/search/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or address or city can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/mapapi/model/inner/Point;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or mLocation can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCoder;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    return-void
.end method
