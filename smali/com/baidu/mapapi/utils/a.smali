.class public Lcom/baidu/mapapi/utils/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field static b:Landroid/content/ServiceConnection;

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/baidu/a/a/a/b;

.field private static e:Lcom/baidu/a/a/a/a;

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/baidu/mapapi/model/LatLng;

.field private static l:Lcom/baidu/mapapi/model/LatLng;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Lcom/baidu/mapapi/model/LatLng;

.field private static s:I

.field private static t:Z

.field private static u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->i:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->p:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->q:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/utils/a;->r:Lcom/baidu/mapapi/model/LatLng;

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapapi/utils/a;->s:I

    sput-boolean v0, Lcom/baidu/mapapi/utils/a;->t:Z

    sput-boolean v0, Lcom/baidu/mapapi/utils/a;->u:Z

    new-instance v0, Lcom/baidu/mapapi/utils/c;

    invoke-direct {v0}, Lcom/baidu/mapapi/utils/c;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/utils/a;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/baidu/a/a/a/a;)Lcom/baidu/a/a/a/a;
    .locals 0

    sput-object p0, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/a/a/a/b;)Lcom/baidu/a/a/a/b;
    .locals 0

    sput-object p0, Lcom/baidu/mapapi/utils/a;->d:Lcom/baidu/a/a/a/b;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/common/AppTools;->getBaiduMapToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/mapapi/utils/a;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/utils/a;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/baidu/mapapi/utils/a;->u:Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mapapi/utils/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->h:Ljava/lang/String;

    const-string p1, ""

    sput-object p1, Lcom/baidu/mapapi/utils/a;->i:Ljava/lang/String;

    sget-object p1, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    sget-object v0, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->k()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->j()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->h()Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->i()Z

    move-result p0

    return p0

    :pswitch_4
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->l()Z

    move-result p0

    return p0

    :pswitch_5
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->g()Z

    move-result p0

    return p0

    :pswitch_6
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->f()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v0, Lcom/baidu/mapapi/utils/a;->t:Z

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x8

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x2

    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_7
    sput v1, Lcom/baidu/mapapi/utils/a;->a:I

    goto :goto_0

    :pswitch_8
    sput v0, Lcom/baidu/mapapi/utils/a;->a:I

    :goto_0
    sget-object v0, Lcom/baidu/mapapi/utils/a;->d:Lcom/baidu/a/a/a/b;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/mapapi/utils/a;->u:Z

    if-eqz v0, :cond_1

    sget-object p0, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    if-eqz p0, :cond_0

    sput-boolean v1, Lcom/baidu/mapapi/utils/a;->t:Z

    invoke-static {p1}, Lcom/baidu/mapapi/utils/a;->a(I)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/baidu/mapapi/utils/a;->d:Lcom/baidu/a/a/a/b;

    new-instance v0, Lcom/baidu/mapapi/utils/b;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/utils/b;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/baidu/a/a/a/b;->a(Lcom/baidu/a/a/a/c;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/baidu/mapapi/utils/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/utils/a;->b(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/a;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/utils/a;->b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/a;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/utils/a;->b(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/a;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Landroid/content/Context;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/a;->a(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/a;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/baidu/mapapi/utils/a;->t:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "api_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.map.action.OPEN_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/baidu/mapapi/utils/a;->b:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sput-boolean p0, Lcom/baidu/mapapi/utils/a;->u:Z

    return-void
.end method

.method private static b(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private static b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getUid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getUid()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->p:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->q:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->r:Lcom/baidu/mapapi/model/LatLng;

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getRadius()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getRadius()I

    move-result p0

    sput p0, Lcom/baidu/mapapi/utils/a;->s:I

    :cond_3
    return-void
.end method

.method private static b(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getBusStrategyType()Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getBusStrategyType()Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/utils/a;->o:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    :cond_4
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/baidu/mapapi/utils/a;->f:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c()Lcom/baidu/a/a/a/a;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d()Lcom/baidu/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/utils/a;->d:Lcom/baidu/a/a/a/b;

    return-object v0
.end method

.method static synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/baidu/mapapi/utils/a;->t:Z

    return v0
.end method

.method private static f()Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOutRoute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v2, "map.android.baidu.mainmap"

    invoke-interface {v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "route_search_page"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "route_type"

    sget v5, Lcom/baidu/mapapi/utils/a;->f:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "bus_strategy"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->o:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    invoke-virtual {v5}, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->ordinal()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "cross_city_bus_strategy"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v4, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    const-string v4, "start_type"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "start_longitude"

    sget-object v7, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "start_latitude"

    sget-object v7, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v4, "start_type"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "start_longitude"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "start_latitude"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    sget-object v4, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "start_keyword"

    sget-object v7, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v4, "start_keyword"

    const-string v7, "\u5730\u56fe\u4e0a\u7684\u70b9"

    goto :goto_1

    :goto_2
    const-string v4, "start_uid"

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v4, :cond_2

    const-string v4, "end_type"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "end_longitude"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "end_latitude"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    const-string v4, "end_type"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "end_longitude"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "end_latitude"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    sget-object v4, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "end_keyword"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    const-string v4, "end_keyword"

    const-string v5, "\u5730\u56fe\u4e0a\u7684\u70b9"

    goto :goto_4

    :goto_5
    const-string v4, "end_uid"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "base_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v4, "map.android.baidu.mainmap"

    invoke-interface {v3, v4, v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_4
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut com not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    sget-object v2, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return v0
.end method

.method private static g()Z
    .locals 6

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v1, "callDispatchTakeOutPoiDetials"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v1, "map.android.baidu.mainmap"

    invoke-interface {v0, v1}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "target"

    const-string v3, "request_poi_detail_page"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->p:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "uid"

    sget-object v4, Lcom/baidu/mapapi/utils/a;->p:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "uid"

    const-string v4, ""

    goto :goto_0

    :goto_1
    const-string v3, "base_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "launch_from"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdk_["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ext_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v2, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v3, "map.android.baidu.mainmap"

    invoke-interface {v2, v3, v0, v1}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v1, "callDispatchTakeOut com not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private static h()Z
    .locals 12

    sget-object v0, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchPoiToBaiduMap"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v2, "map.android.baidu.mainmap"

    invoke-interface {v0, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "favorite_page"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v5, v1

    move v6, v5

    :goto_0
    sget-object v7, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    sget-object v7, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v7, v7, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->name:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v7, v7, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->name:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v7, v7, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->pt:Lcom/baidu/mapapi/model/LatLng;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v8, "name"

    sget-object v9, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v9, v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v8, v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->pt:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v8}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v8

    const-string v9, "ptx"

    invoke-virtual {v8}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v9, "pty"

    invoke-virtual {v8}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v8, "addr"

    sget-object v9, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v9, v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->addr:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "uid"

    sget-object v9, Lcom/baidu/mapapi/utils/a;->j:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v9, v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->uid:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    if-nez v6, :cond_4

    return v1

    :cond_4
    const-string v5, "data"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "from"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pkg"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cls"

    sget-object v5, Lcom/baidu/mapapi/utils/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "count"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "base_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v4, "map.android.baidu.mainmap"

    invoke-interface {v3, v4, v0, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_5
    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchPoiToBaiduMap com not found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v2, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v3, "callDispatchPoiToBaiduMap exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return v1
.end method

.method private static i()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOutRouteNavi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v2, "map.android.baidu.mainmap"

    invoke-interface {v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "navigation_page"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "coord_type"

    const-string v5, "bd09ll"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    const-string v5, "DIS"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v5, "latlng:%f,%f"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v0

    sget-object v8, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v7, "latlng:%f,%f"

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v0

    sget-object v8, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "origin"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "destination"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "base_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v4, "map.android.baidu.mainmap"

    invoke-interface {v3, v4, v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_2
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut com not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private static j()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOutRouteNavi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v2, "map.android.baidu.mainmap"

    invoke-interface {v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "walknavi_page"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "coord_type"

    const-string v5, "bd09ll"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v5, "latlng:%f,%f"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v0

    sget-object v8, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v7, "latlng:%f,%f"

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v0

    sget-object v8, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "origin"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "destination"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "base_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v4, "map.android.baidu.mainmap"

    invoke-interface {v3, v4, v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_2
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut com not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private static k()Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOutRouteRidingNavi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v2, "map.android.baidu.mainmap"

    invoke-interface {v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "bikenavi_page"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "coord_type"

    const-string v5, "bd09ll"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v5, "latlng:%f,%f"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v0

    sget-object v8, Lcom/baidu/mapapi/utils/a;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v7, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v7, "latlng:%f,%f"

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v0

    sget-object v8, Lcom/baidu/mapapi/utils/a;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v10, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "origin"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "destination"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "base_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v4, "map.android.baidu.mainmap"

    invoke-interface {v3, v4, v1, v2}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_2
    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut com not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private static l()Z
    .locals 6

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v1, "callDispatchTakeOutPoiNearbySearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v1, "map.android.baidu.mainmap"

    invoke-interface {v0, v1}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "target"

    const-string v3, "poi_search_page"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/baidu/mapapi/utils/a;->q:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "search_key"

    sget-object v4, Lcom/baidu/mapapi/utils/a;->q:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v3, "search_key"

    const-string v4, ""

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/baidu/mapapi/utils/a;->r:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v3, :cond_1

    const-string v3, "center_pt_x"

    sget-object v4, Lcom/baidu/mapapi/utils/a;->r:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "center_pt_y"

    sget-object v4, Lcom/baidu/mapapi/utils/a;->r:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_1
    const-string v3, "search_key"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget v3, Lcom/baidu/mapapi/utils/a;->s:I

    if-eqz v3, :cond_2

    const-string v3, "search_radius"

    sget v4, Lcom/baidu/mapapi/utils/a;->s:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    const-string v3, "search_radius"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    const-string v3, "is_direct_search"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "is_direct_area_search"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "base_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "launch_from"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdk_["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/baidu/mapapi/utils/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ext_params"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v2, Lcom/baidu/mapapi/utils/a;->e:Lcom/baidu/a/a/a/a;

    const-string v3, "map.android.baidu.mainmap"

    invoke-interface {v2, v3, v0, v1}, Lcom/baidu/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_3
    sget-object v0, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v1, "callDispatchTakeOut com not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    sget-object v1, Lcom/baidu/mapapi/utils/a;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v0, 0x0

    return v0
.end method
