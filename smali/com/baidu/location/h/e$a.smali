.class Lcom/baidu/location/h/e$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/h/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/h/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/e$a;->a:Lcom/baidu/location/h/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/h/e;Lcom/baidu/location/h/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/h/e$a;-><init>(Lcom/baidu/location/h/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    sput-wide p1, Lcom/baidu/location/h/e;->kc:J

    iget-object p1, p0, Lcom/baidu/location/h/e$a;->a:Lcom/baidu/location/h/e;

    invoke-static {p1}, Lcom/baidu/location/h/e;->if(Lcom/baidu/location/h/e;)V

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/m;->a8()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/baidu/location/e/a;->for()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1388

    cmp-long p1, p1, v0

    if-gtz p1, :cond_2

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/h/h;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/location/h/e$a;->a:Lcom/baidu/location/h/e;

    invoke-virtual {p2}, Lcom/baidu/location/h/e;->c6()Lcom/baidu/location/h/f;

    move-result-object p2

    invoke-static {}, Lcom/baidu/location/e/a;->if()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/e/a;->do()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/baidu/location/e/o;->do(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
