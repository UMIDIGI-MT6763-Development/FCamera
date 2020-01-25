.class public Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;
.super Ljava/lang/Object;
.source "BaiduLocationAgent.java"

# interfaces
.implements Lcom/freeme/camera/common/location/ILocationAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;,
        Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;,
        Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaiduLocationAgent"


# instance fields
.field private isOn:Z

.field private mConnection:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurLatitude:D

.field private mCurLongitude:D

.field mIDownListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;

.field private mLibLocation:Ljava/lang/String;

.field private mService:Lcom/freeme/camera/location/ILocationSecurityService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLongitude:D

    iput-wide v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLatitude:D

    new-instance v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;-><init>(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mIDownListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)Lcom/freeme/camera/location/ILocationSecurityService;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mService:Lcom/freeme/camera/location/ILocationSecurityService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;Lcom/freeme/camera/location/ILocationSecurityService;)Lcom/freeme/camera/location/ILocationSecurityService;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mService:Lcom/freeme/camera/location/ILocationSecurityService;

    return-object p1
.end method

.method static spiltJson(Ljava/lang/String;)Landroid/location/Address;
    .locals 5

    :try_start_0
    new-instance v0, Landroid/location/Address;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "addArr"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "BaiduLocationAgent"

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static splitJsonToAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "addr"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCurLatitude()D
    .locals 4

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurLatitude=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLatitude:D

    return-wide v0
.end method

.method public getCurLongitude()D
    .locals 4

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurLongitude=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLongitude:D

    return-wide v0
.end method

.method public getLibLocation()Ljava/lang/String;
    .locals 3

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLibLocation=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mLibLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mLibLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getisLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->isOn:Z

    return v0
.end method

.method public reverseGeoCode(DD)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mService:Lcom/freeme/camera/location/ILocationSecurityService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, p3, p4, p1, p2}, Lcom/freeme/camera/location/ILocationSecurityService;->getLocationStrFromSecurityByCoo(DD)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public setReverseGeoCodeListner(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mIDownListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;

    iput-object p1, v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;->mOnGetLocationStrByCooCompletedListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;

    return-void
.end method

.method public setisLocation(Z)V
    .locals 3

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->isOn:Z

    return-void
.end method

.method spiltJsonTogetLocation(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "longitude"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLongitude:D

    const-string p1, "latitude"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLatitude:D

    const-string p1, "prov"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "city"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mLibLocation:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prov"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "city"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mLibLocation:Ljava/lang/String;

    :goto_0
    const-string p1, "sun"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurLongitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mCurLatitude"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mCurLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public start()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mContext:Landroid/content/Context;

    const-class v3, Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.freeme.camera"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;-><init>(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)V

    iput-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mConnection:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mConnection:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mConnection:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mConnection:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;

    :cond_0
    return-void
.end method
