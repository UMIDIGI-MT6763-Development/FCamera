.class public Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/location/addressResovler/ReverseGeocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetLatLong"
.end annotation


# instance fields
.field public mMaxLatLatitude:D

.field public mMaxLatLongitude:D

.field public mMaxLonLatitude:D

.field public mMaxLonLongitude:D

.field public mMinLatLatitude:D

.field public mMinLatLongitude:D

.field public mMinLonLatitude:D

.field public mMinLonLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4056800000000000L    # 90.0

    iput-wide v0, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    const-wide v0, -0x3fa9800000000000L    # -90.0

    iput-wide v0, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    const-wide v0, 0x4066800000000000L    # 180.0

    iput-wide v0, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    const-wide v0, -0x3f99800000000000L    # -180.0

    iput-wide v0, p0, Lcom/freeme/camera/location/addressResovler/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    return-void
.end method
