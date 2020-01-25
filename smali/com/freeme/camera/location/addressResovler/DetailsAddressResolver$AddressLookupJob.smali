.class Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$Job<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mLatlng:[D

.field final synthetic this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;


# direct methods
.method protected constructor <init>(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;[D)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    return-void
.end method


# virtual methods
.method public run(Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 6

    new-instance v0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;

    iget-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;->this$0:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;

    invoke-static {p1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->access$300(Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;)Lcom/freeme/camera/GalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;->mLatlng:[D

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver$AddressLookupJob;->run(Lcom/freeme/camera/location/addressResovler/utils/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
