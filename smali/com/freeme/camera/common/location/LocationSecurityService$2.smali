.class Lcom/freeme/camera/common/location/LocationSecurityService$2;
.super Lcom/freeme/camera/location/ILocationSecurityService$Stub;
.source "LocationSecurityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/location/LocationSecurityService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/location/LocationSecurityService;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/location/LocationSecurityService;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/LocationSecurityService$2;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-direct {p0}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinates()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/location/LocationSecurityService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "1"

    return-object v0
.end method

.method public getLocationStrFromSecurity()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/location/LocationSecurityService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "1"

    return-object v0
.end method

.method public getLocationStrFromSecurityByCoo(DD)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "longitude"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "latitude"

    invoke-virtual {v1, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p1, Lcom/freeme/camera/common/location/LocationSecurityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "1"

    return-object p1
.end method

.method public listenUserEvent(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p3, p0, Lcom/freeme/camera/common/location/LocationSecurityService$2;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {p3}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$100(Lcom/freeme/camera/common/location/LocationSecurityService;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "LocationSecurityService"

    const-string p2, "mLocationService"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Lcom/freeme/camera/common/location/LocationSecurityService$2;->this$0:Lcom/freeme/camera/common/location/LocationSecurityService;

    invoke-static {p2}, Lcom/freeme/camera/common/location/LocationSecurityService;->access$100(Lcom/freeme/camera/common/location/LocationSecurityService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
