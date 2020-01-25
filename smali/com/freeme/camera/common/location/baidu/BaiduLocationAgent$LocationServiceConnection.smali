.class Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;
.super Ljava/lang/Object;
.source "BaiduLocationAgent.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "BaiduLocationAgent"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-static {p2}, Lcom/freeme/camera/location/ILocationSecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/freeme/camera/location/ILocationSecurityService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->access$002(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;Lcom/freeme/camera/location/ILocationSecurityService;)Lcom/freeme/camera/location/ILocationSecurityService;

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-static {p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->access$000(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)Lcom/freeme/camera/location/ILocationSecurityService;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    iget-object p2, p2, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mIDownListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    iget-object v0, v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->mIDownListener:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationListener;

    const-class v1, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/freeme/camera/location/ILocationSecurityService;->listenUserEvent(Ljava/lang/String;Lcom/freeme/camera/location/ILocationListener;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    invoke-static {p1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->access$000(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;)Lcom/freeme/camera/location/ILocationSecurityService;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/location/ILocationSecurityService;->getCoordinates()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BaiduLocationAgent"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$LocationServiceConnection;->this$0:Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->access$002(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;Lcom/freeme/camera/location/ILocationSecurityService;)Lcom/freeme/camera/location/ILocationSecurityService;

    return-void
.end method
