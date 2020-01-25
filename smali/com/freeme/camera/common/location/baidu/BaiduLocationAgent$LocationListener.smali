.class Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;
.super Lcom/freeme/camera/location/ILocationListener$Stub;
.source "BaiduLocationAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationListener"
.end annotation


# instance fields
.field mOnGetLocationStrByCooCompletedListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;

.field final synthetic this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-direct {p0}, Lcom/freeme/camera/location/ILocationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinatesCompleted(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCoordinatesCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->spiltJsonTogetLocation(Ljava/lang/String;)V

    return-void
.end method

.method public getLocationStrByCooCompleted(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getLocationStrByCooCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;->mOnGetLocationStrByCooCompletedListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;->OnGetLocationStrByCooCompleted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getLocationStrCompleted(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BaiduLocationAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getLocationStrCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;->mOnGetLocationStrByCooCompletedListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;->OnGetLocationStrByCooCompleted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
