.class public Lcom/baidu/mapapi/search/busline/BusLineSearch;
.super Lcom/baidu/mapapi/search/core/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/busline/BusLineSearch$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    new-instance v1, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v2, Lcom/baidu/mapapi/search/busline/BusLineSearch$a;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mapapi/search/busline/BusLineSearch$a;-><init>(Lcom/baidu/mapapi/search/busline/BusLineSearch;Lcom/baidu/mapapi/search/busline/BusLineSearch$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/busline/BusLineSearch;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/busline/BusLineSearch;)Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    return-object p0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/busline/BusLineSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/busline/BusLineSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/busline/BusLineSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    iget-object v1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public searchBusLine(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comapi/search/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or city or uid can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetBusLineSearchResultListener(Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/busline/BusLineSearch;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    return-void
.end method
