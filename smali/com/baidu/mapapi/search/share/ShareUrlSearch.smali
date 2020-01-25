.class public Lcom/baidu/mapapi/search/share/ShareUrlSearch;
.super Lcom/baidu/mapapi/search/core/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/platform/comapi/search/d;

.field private b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    iput v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    iput v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    new-instance v1, Lcom/baidu/platform/comapi/search/d;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/search/d;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    new-instance v2, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch$a;-><init>(Lcom/baidu/mapapi/search/share/ShareUrlSearch;Lcom/baidu/mapapi/search/share/ShareUrlSearch$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/b;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/search/share/ShareUrlSearch;)I
    .locals 0

    iget p0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    return p0
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/share/ShareUrlSearch;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    new-instance v0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/share/ShareUrlSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    iget-object v1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/search/d;->a()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public requestLocationShareUrl(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object v1, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/Point;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/mapapi/model/inner/Point;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "option or name or snippet  can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "searcher has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPoiDetailShareUrl(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->a:Lcom/baidu/platform/comapi/search/d;

    iget-object p1, p1, Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/d;->b(Ljava/lang/String;)Z

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

.method public setOnGetShareUrlResultListener(Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlSearch;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    return-void
.end method
