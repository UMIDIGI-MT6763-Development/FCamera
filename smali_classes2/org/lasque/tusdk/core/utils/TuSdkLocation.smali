.class public Lorg/lasque/tusdk/core/utils/TuSdkLocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;,
        Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;
    }
.end annotation


# static fields
.field private static a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/location/Criteria;

.field private d:Landroid/location/Location;

.field private e:Landroid/location/LocationManager;

.field private f:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;

.field private g:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->b:Landroid/content/Context;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a()Landroid/location/Criteria;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->c:Landroid/location/Criteria;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkLocation;Lorg/lasque/tusdk/core/utils/TuSdkLocation$1;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->f:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->h:Landroid/os/Handler;

    new-instance p1, Lorg/lasque/tusdk/core/utils/TuSdkLocation$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation$1;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkLocation;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->c()V

    return-void
.end method

.method private a()Landroid/location/Criteria;
    .locals 3

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/utils/TuSdkLocation;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->g:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d:Landroid/location/Location;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;->onLocationReceived(Landroid/location/Location;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->h:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/utils/TuSdkLocation$2;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation$2;-><init>(Lorg/lasque/tusdk/core/utils/TuSdkLocation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static canGps()Z
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->k:Z

    return v0
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->c:Landroid/location/Criteria;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->k:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v3, "network"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->h:Landroid/os/Handler;

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->j:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->f:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;->setProvider(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d:Landroid/location/Location;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->f:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->h:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private e()Z
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d:Landroid/location/Location;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->b()V

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static getLastLocation()Landroid/location/Location;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->c()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    iget-object v0, v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d:Landroid/location/Location;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    :cond_0
    return-void
.end method

.method public static setDelegate(Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->a:Lorg/lasque/tusdk/core/utils/TuSdkLocation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p0, v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->g:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;

    iget-object p0, v0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->g:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationDelegate;

    if-eqz p0, :cond_1

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->c()V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelGPS()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->f:Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->j:Z

    :cond_0
    return-void
.end method

.method public locationChangedCallback(Landroid/location/Location;Lorg/lasque/tusdk/core/utils/TuSdkLocation$TuSdkLocationListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->d:Landroid/location/Location;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->b()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->e:Landroid/location/LocationManager;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/utils/TuSdkLocation;->j:Z

    return-void
.end method
