.class final Lcom/baidu/mapapi/utils/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/mapapi/utils/a;->d()Lcom/baidu/a/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/baidu/mapapi/utils/a;->a(Lcom/baidu/a/a/a/b;)Lcom/baidu/a/a/a/b;

    :cond_0
    invoke-static {p2}, Lcom/baidu/a/a/a/b$a;->a(Landroid/os/IBinder;)Lcom/baidu/a/a/a/b;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mapapi/utils/a;->a(Lcom/baidu/a/a/a/b;)Lcom/baidu/a/a/a/b;

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->d()Lcom/baidu/a/a/a/b;

    move-result-object p2

    new-instance v0, Lcom/baidu/mapapi/utils/d;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/utils/d;-><init>(Lcom/baidu/mapapi/utils/c;)V

    invoke-interface {p2, v0}, Lcom/baidu/a/a/a/b;->a(Lcom/baidu/a/a/a/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getComOpenClient "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->d()Lcom/baidu/a/a/a/b;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/baidu/mapapi/utils/a;->a(Lcom/baidu/a/a/a/b;)Lcom/baidu/a/a/a/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mapapi/utils/a;->d()Lcom/baidu/a/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/baidu/mapapi/utils/a;->a(Lcom/baidu/a/a/a/b;)Lcom/baidu/a/a/a/b;

    :cond_0
    return-void
.end method
