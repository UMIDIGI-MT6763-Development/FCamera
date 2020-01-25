.class public Lcom/baidu/location/h/e;
.super Lcom/baidu/location/h/k;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/h/e$a;
    }
.end annotation


# static fields
.field public static final j9:J = 0xbb8L

.field public static final ka:I = 0xf

.field public static kc:J = 0x0L

.field public static final kf:J = 0xbb8L

.field public static final kh:J = 0x1388L

.field private static kj:Lcom/baidu/location/h/e;


# instance fields
.field private kb:Z

.field private kd:Lcom/baidu/location/h/f;

.field private ke:Ljava/lang/Object;

.field private kg:J

.field private ki:Landroid/net/wifi/WifiManager;

.field private kk:Ljava/lang/reflect/Method;

.field private kl:Z

.field private km:J

.field private kn:Lcom/baidu/location/h/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/baidu/location/h/k;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/h/e;->kn:Lcom/baidu/location/h/e$a;

    iput-object v0, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/h/e;->kg:J

    iput-wide v1, p0, Lcom/baidu/location/h/e;->km:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/h/e;->kl:Z

    iput-object v0, p0, Lcom/baidu/location/h/e;->ke:Ljava/lang/Object;

    iput-object v0, p0, Lcom/baidu/location/h/e;->kk:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/h/e;->kb:Z

    return-void
.end method

.method private dd()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/baidu/location/h/f;

    iget-wide v2, p0, Lcom/baidu/location/h/e;->kg:J

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/location/h/f;-><init>(Ljava/util/List;J)V

    iget-object v0, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/baidu/location/h/f;->new(Lcom/baidu/location/h/f;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object v1, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    :catch_0
    :cond_2
    return-void
.end method

.method public static de()Lcom/baidu/location/h/e;
    .locals 1

    sget-object v0, Lcom/baidu/location/h/e;->kj:Lcom/baidu/location/h/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/h/e;

    invoke-direct {v0}, Lcom/baidu/location/h/e;-><init>()V

    sput-object v0, Lcom/baidu/location/h/e;->kj:Lcom/baidu/location/h/e;

    :cond_0
    sget-object v0, Lcom/baidu/location/h/e;->kj:Lcom/baidu/location/h/e;

    return-object v0
.end method

.method public static if(Lcom/baidu/location/h/f;Lcom/baidu/location/h/f;)D
    .locals 11

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    iget-object p1, p1, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ne p0, p1, :cond_1

    return-wide v2

    :cond_1
    if-eqz p0, :cond_a

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int v6, v4, v5

    int-to-float v6, v6

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    return-wide v2

    :cond_3
    if-eqz v4, :cond_a

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    move v7, v3

    :goto_0
    if-ge v3, v4, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    move v9, v2

    :goto_1
    if-ge v9, v5, :cond_7

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    iget-object v10, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    cmpg-float p0, v6, p0

    if-gtz p0, :cond_9

    return-wide v0

    :cond_9
    int-to-double p0, v7

    float-to-double v0, v6

    div-double/2addr p0, v0

    return-wide p0

    :cond_a
    :goto_3
    return-wide v0
.end method

.method static synthetic if(Lcom/baidu/location/h/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/h/e;->dd()V

    return-void
.end method

.method public static if(Lcom/baidu/location/h/f;Lcom/baidu/location/h/f;F)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    iget-object p1, p1, Lcom/baidu/location/h/f;->kr:Ljava/util/List;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_9

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int v4, v2, v3

    int-to-float v4, v4

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_9

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_8

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_1
    if-ge v8, v3, :cond_7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-object v9, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    mul-int/lit8 v6, v6, 0x2

    int-to-float p0, v6

    mul-float/2addr v4, p2

    cmpl-float p0, p0, v4

    if-ltz p0, :cond_9

    return v1

    :cond_9
    :goto_3
    return v0
.end method

.method public static if(Ljava/util/List;Ljava/util/List;F)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_9

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int v4, v2, v3

    int-to-float v4, v4

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_9

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v5, v0

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_8

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_1
    if-ge v8, v3, :cond_7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-object v9, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    mul-int/lit8 v6, v6, 0x2

    int-to-float p0, v6

    mul-float/2addr v4, p2

    cmpl-float p0, p0, v4

    if-ltz p0, :cond_9

    return v1

    :cond_9
    :goto_3
    return v0
.end method


# virtual methods
.method public D(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/baidu/location/h/k;->D(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c0()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method public c1()V
    .locals 0

    invoke-super {p0}, Lcom/baidu/location/h/k;->c1()V

    return-void
.end method

.method public c2()Lcom/baidu/location/h/f;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/baidu/location/h/f;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/location/h/e;->kg:J

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/location/h/f;-><init>(Ljava/util/List;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    new-instance v0, Lcom/baidu/location/h/f;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/h/f;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public c3()Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/h/e;->kg:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/location/h/e;->c8()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized c4()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/h/e;->kl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/h/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/h/e$a;-><init>(Lcom/baidu/location/h/e;Lcom/baidu/location/h/e$1;)V

    iput-object v0, p0, Lcom/baidu/location/h/e;->kn:Lcom/baidu/location/h/e$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/h/e;->kn:Lcom/baidu/location/h/e$a;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    iput-boolean v1, p0, Lcom/baidu/location/h/e;->kl:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mService"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/h/e;->ke:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/h/e;->ke:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c5()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public c6()Lcom/baidu/location/h/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/h/f;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/location/h/e;->c2()Lcom/baidu/location/h/f;

    move-result-object v0

    return-object v0
.end method

.method public c7()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    :cond_4
    return-object v0

    :catch_0
    return-object v1
.end method

.method public c8()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/baidu/location/h/e;->kk:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/h/e;->ke:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/baidu/location/h/e;->kk:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/baidu/location/h/e;->ke:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/baidu/location/h/e;->kb:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/h/e;->kg:J
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_1
    return v0

    :catch_2
    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/h/e;->kg:J

    return v1
.end method

.method public c9()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    move v0, v2

    :catch_0
    :cond_0
    return v0
.end method

.method public cY()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/h/e;->km:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/h/e;->km:J

    invoke-virtual {p0}, Lcom/baidu/location/h/e;->c3()Z

    move-result v0

    return v0
.end method

.method public cZ()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public da()I
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    if-eqz v2, :cond_4

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    :cond_3
    return v1

    :cond_4
    return v0

    :catch_0
    return v1
.end method

.method public declared-synchronized db()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/h/e;->kl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/h/e;->kn:Lcom/baidu/location/h/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/h/e;->kc:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/h/e;->kn:Lcom/baidu/location/h/e$a;

    iput-object v0, p0, Lcom/baidu/location/h/e;->ki:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/h/e;->kl:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dc()Lcom/baidu/location/h/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/h/f;->dm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/h/e;->kd:Lcom/baidu/location/h/f;

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/location/h/e;->c2()Lcom/baidu/location/h/f;

    move-result-object v0

    return-object v0
.end method

.method public do(Ljava/util/List;)Lcom/baidu/location/h/f;
    .locals 0

    invoke-super {p0, p1}, Lcom/baidu/location/h/k;->do(Ljava/util/List;)Lcom/baidu/location/h/f;

    move-result-object p1

    return-object p1
.end method
