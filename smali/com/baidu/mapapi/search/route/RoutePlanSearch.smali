.class public final Lcom/baidu/mapapi/search/route/RoutePlanSearch;
.super Lcom/baidu/mapapi/search/core/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    iput v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    iput v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    new-instance v1, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v2, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch$a;-><init>(Lcom/baidu/mapapi/search/route/RoutePlanSearch;Lcom/baidu/mapapi/search/route/RoutePlanSearch$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/search/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/PlanNode;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/baidu/platform/comapi/search/f;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/f;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/platform/comapi/search/f;->b:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/platform/comapi/search/f;->a:Lcom/baidu/mapapi/model/inner/Point;

    :cond_5
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v1, ""

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v2, Lcom/baidu/platform/comapi/search/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/route/RoutePlanSearch;)I
    .locals 0

    iget p0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    return p0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    iget-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z
    .locals 13

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->c:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_TIME_FIRST:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->c:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    :cond_0
    new-instance v2, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v1, v2, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_2
    new-instance v3, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v1, v3, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_4
    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->ROUTE_PATH:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->getInt()I

    move-result v0

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->e:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->e:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingTrafficPolicy;->getInt()I

    move-result v0

    :cond_5
    move v10, v0

    iget-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xc

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->c:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->getInt()I

    move-result v9

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/inner/MapBound;IIILjava/util/ArrayList;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route plan option , origin or destination can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    return-void
.end method

.method public transitSearch(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z
    .locals 9

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    :cond_0
    new-instance v2, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v1, v2, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_2
    new-instance v3, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v1, v3, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_4
    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iget-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v4, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0xc

    iget-object p1, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->d:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->getInt()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Lcom/baidu/mapapi/model/inner/MapBound;IILjava/util/Map;)Z

    move-result p1

    return p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route plan option,origin or destination or city can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public walkingSearch(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z
    .locals 10

    iget-object v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v1, v2, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_1
    new-instance v3, Lcom/baidu/platform/comapi/search/a;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/search/a;-><init>()V

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/a;->c:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->a()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/platform/comapi/search/a;->b:Lcom/baidu/mapapi/model/inner/Point;

    iput v1, v3, Lcom/baidu/platform/comapi/search/a;->a:I

    :cond_3
    iget v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->d:I

    iput v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->e:I

    iget-object v1, p0, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->a:Lcom/baidu/platform/comapi/search/d;

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->a:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->b:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/a;Lcom/baidu/platform/comapi/search/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/model/inner/MapBound;ILjava/util/Map;)Z

    move-result p1

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option , origin or destination can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
