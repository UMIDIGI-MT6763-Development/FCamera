.class public Lcom/freeme/camera/common/location/LocationSecurityService;
.super Landroid/app/Service;
.source "LocationSecurityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;
    }
.end annotation


# static fields
.field public static final GETCOORDINATES:I = 0x4

.field public static final GETCOORDINATESCOMPLETED:I = 0x7

.field public static final GETLOCATIONSTRBYCOOCOMPLETED:I = 0x6

.field public static final GETLOCATIONSTRCOMPLETED:I = 0x8

.field public static final GETLOCATIONSTRFROMSECURITY:I = 0x5

.field public static final GETLOCATIONSTRFROMSECURITYBYCOO:I = 0x3

.field public static final LISTENUSEREVENT:I = 0x1

.field public static final MSG_ERROR:Ljava/lang/String; = "error"

.field public static final MSG_SUCESS:Ljava/lang/String; = "sucess"

.field public static final UNREGISTERLISTENER:I = 0x2

.field public static mHandler:Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBMapManager:Lcom/baidu/mapapi/BMapManager;

.field private mContext:Landroid/content/Context;

.field private mLocation:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

.field private mLocationListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/location/ILocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationService:Landroid/os/IBinder;

.field mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocationService:Landroid/os/IBinder;

    const-string v1, "LocationSecurityService"

    iput-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mBMapManager:Lcom/baidu/mapapi/BMapManager;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/location/LocationSecurityService;)Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocation:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/location/LocationSecurityService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocationListener:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocationService:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "LocationSecurityService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocation:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;-><init>(Lcom/freeme/camera/common/location/LocationSecurityService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocation:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    iget-object v1, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocation:Lcom/freeme/camera/common/location/LocationSecurityService$LocationPerformer;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocationListener:Ljava/util/HashMap;

    new-instance v0, Lcom/freeme/camera/common/location/LocationSecurityService$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/location/LocationSecurityService$1;-><init>(Lcom/freeme/camera/common/location/LocationSecurityService;)V

    sput-object v0, Lcom/freeme/camera/common/location/LocationSecurityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/common/location/LocationSecurityService$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/location/LocationSecurityService$2;-><init>(Lcom/freeme/camera/common/location/LocationSecurityService;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocationService:Landroid/os/IBinder;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/freeme/camera/common/location/LocationSecurityService;->mLocationListener:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
