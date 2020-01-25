.class public Lcom/baidu/mapapi/search/poi/PoiSearch;
.super Lcom/baidu/mapapi/search/core/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/poi/PoiSearch$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->c:Z

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->d:I

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->g:I

    new-instance v1, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v2, Lcom/baidu/mapapi/search/poi/PoiSearch$a;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mapapi/search/poi/PoiSearch$a;-><init>(Lcom/baidu/mapapi/search/poi/PoiSearch;Lcom/baidu/mapapi/search/poi/PoiSearch$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/poi/PoiSearch;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/poi/PoiSearch;)Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/poi/PoiSearch;)I
    .locals 0

    iget p0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->g:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/mapapi/search/poi/PoiSearch;)Lcom/baidu/platform/comapi/search/d;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/mapapi/search/poi/PoiSearch;)I
    .locals 0

    iget p0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    return p0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/poi/PoiSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public searchInBound(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)Z
    .locals 10

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->a:Lcom/baidu/mapapi/model/LatLngBounds;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->d:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->g:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->e:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->a(I)V

    new-instance v6, Lcom/baidu/mapapi/model/inner/MapBound;

    invoke-direct {v6}, Lcom/baidu/mapapi/model/inner/MapBound;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->a:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/baidu/mapapi/model/inner/MapBound;->setPtRT(Lcom/baidu/mapapi/model/inner/Point;)V

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->a:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/baidu/mapapi/model/inner/MapBound;->setPtLB(Lcom/baidu/mapapi/model/inner/Point;)V

    iget-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v3, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->b:Ljava/lang/String;

    const/4 v4, 0x1

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->d:I

    iget p1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->c:F

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/platform/comapi/search/d;->a(Ljava/lang/String;IILcom/baidu/mapapi/model/inner/MapBound;ILcom/baidu/mapapi/model/inner/Point;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or bound or keyworld can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchInCity(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)Z
    .locals 9

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->g:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->a(I)V

    iget-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v3, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->a:Ljava/lang/String;

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->e:I

    const/4 v6, 0x0

    iget p1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->c:F

    float-to-int v7, p1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comapi/search/d;->a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mapapi/model/inner/MapBound;ILjava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or city or keyworld can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchNearby(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)Z
    .locals 13

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->c:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->d:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->g:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/search/d;->a(I)V

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapapi/model/inner/Point;

    iget v2, v0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget v3, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->c:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    iget v4, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    new-instance v2, Lcom/baidu/mapapi/model/inner/Point;

    iget v3, v0, Lcom/baidu/mapapi/model/inner/Point;->x:I

    iget v4, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->c:I

    add-int/2addr v3, v4

    iget v0, v0, Lcom/baidu/mapapi/model/inner/Point;->y:I

    iget v4, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->c:I

    add-int/2addr v0, v4

    invoke-direct {v2, v3, v0}, Lcom/baidu/mapapi/model/inner/Point;-><init>(II)V

    new-instance v10, Lcom/baidu/mapapi/model/inner/MapBound;

    invoke-direct {v10}, Lcom/baidu/mapapi/model/inner/MapBound;-><init>()V

    invoke-virtual {v10, v1}, Lcom/baidu/mapapi/model/inner/MapBound;->setPtLB(Lcom/baidu/mapapi/model/inner/Point;)V

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/model/inner/MapBound;->setPtRT(Lcom/baidu/mapapi/model/inner/Point;)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v0, "distance"

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v5, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->a:Ljava/lang/String;

    const/4 v6, 0x1

    iget v7, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->e:I

    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->d:F

    float-to-int v8, v0

    iget-object p1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->g:Lcom/baidu/mapapi/search/poi/PoiSortType;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiSortType;->ordinal()I

    move-result v12

    move-object v9, v10

    invoke-virtual/range {v4 .. v12}, Lcom/baidu/platform/comapi/search/d;->a(Ljava/lang/String;IIILcom/baidu/mapapi/model/inner/MapBound;Lcom/baidu/mapapi/model/inner/MapBound;Ljava/util/Map;I)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or location or keyworld can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchPoiDetail(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->d:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->e:I

    iget-boolean v0, p1, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->b:Z

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->f:Z

    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object p1, p1, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or uid can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetPoiSearchResultListener(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    return-void
.end method
