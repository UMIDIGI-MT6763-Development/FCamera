.class public Lcom/freeme/camera/common/location/ZuoyiGeoCoder;
.super Ljava/lang/Object;
.source "ZuoyiGeoCoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZuoyiGeoCoder"

.field private static sZouyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;


# instance fields
.field private mAgent:Lcom/freeme/camera/common/location/ILocationAgent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    new-instance v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/freeme/camera/common/location/ZuoyiGeoCoder;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->sZouyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->sZouyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    :cond_0
    sget-object p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->sZouyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    return-object p0
.end method


# virtual methods
.method public getAgent()Lcom/freeme/camera/common/location/ILocationAgent;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    return-object v0
.end method

.method public getCurLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/ILocationAgent;->getCurLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/ILocationAgent;->getCurLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLibLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/ILocationAgent;->getLibLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getisLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/ILocationAgent;->getisLocation()Z

    move-result v0

    return v0
.end method

.method public setisLocation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/freeme/camera/common/location/ILocationAgent;->setisLocation(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/ILocationAgent;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->sZouyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->sZouyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->mAgent:Lcom/freeme/camera/common/location/ILocationAgent;

    invoke-interface {v0}, Lcom/freeme/camera/common/location/ILocationAgent;->stop()V

    return-void
.end method
