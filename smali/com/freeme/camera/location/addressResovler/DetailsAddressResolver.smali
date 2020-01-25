.class public Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;,
        Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;
    }
.end annotation


# instance fields
.field private mAddressLookupJob:Lcom/freeme/camera/location/addressResovler/utils/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/location/addressResovler/utils/Future<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/freeme/camera/GalleryActivity;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/GalleryActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mContext:Lcom/freeme/camera/GalleryActivity;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;Lcom/freeme/camera/location/addressResovler/utils/Future;)Lcom/freeme/camera/location/addressResovler/utils/Future;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mAddressLookupJob:Lcom/freeme/camera/location/addressResovler/utils/Future;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;Landroid/location/Address;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->updateLocation(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;)Lcom/freeme/camera/GalleryActivity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mContext:Lcom/freeme/camera/GalleryActivity;

    return-object p0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateLocation(Landroid/location/Address;)V
    .locals 8

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mContext:Lcom/freeme/camera/GalleryActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const/4 v2, 0x5

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, ""

    move-object v2, p1

    move p1, v3

    :goto_0
    array-length v7, v1

    if-ge p1, v7, :cond_3

    aget-object v7, v1, p1

    if-eqz v7, :cond_2

    aget-object v7, v1, p1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, p1

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "%s : %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/freeme/camera/DetailsDialog;->getDetailsName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mListener:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;

    invoke-interface {v0, p1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mAddressLookupJob:Lcom/freeme/camera/location/addressResovler/utils/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/location/addressResovler/utils/Future;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mAddressLookupJob:Lcom/freeme/camera/location/addressResovler/utils/Future;

    :cond_0
    return-void
.end method

.method public resolveAddress([DLcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 4

    iput-object p2, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mListener:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressResolvingListener;

    iget-object p2, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mContext:Lcom/freeme/camera/GalleryActivity;

    invoke-virtual {p2}, Lcom/freeme/camera/GalleryActivity;->getThreadPool()Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;

    move-result-object p2

    new-instance v0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;-><init>(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;[D)V

    new-instance v1, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$1;-><init>(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;)V

    invoke-virtual {p2, v0, v1}, Lcom/freeme/camera/location/addressResovler/utils/ThreadPool;->submit(Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$Job;Lcom/freeme/camera/location/addressResovler/utils/FutureListener;)Lcom/freeme/camera/location/addressResovler/utils/Future;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->mAddressLookupJob:Lcom/freeme/camera/location/addressResovler/utils/Future;

    const-string p2, "%f,%f"

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-static {p2, v0, v1, v2, v3}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
