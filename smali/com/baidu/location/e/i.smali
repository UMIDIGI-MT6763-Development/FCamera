.class public Lcom/baidu/location/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/i$a;,
        Lcom/baidu/location/e/i$b;
    }
.end annotation


# static fields
.field private static hx:Lcom/baidu/location/e/i;


# instance fields
.field final hA:Landroid/os/Handler;

.field private hB:Z

.field private hC:Z

.field private hD:Z

.field private hE:Lcom/baidu/location/e/i$a;

.field private hy:Z

.field private hz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hC:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hB:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hD:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/e/i;->hz:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hy:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e/i;->hA:Landroid/os/Handler;

    return-void
.end method

.method public static bW()Lcom/baidu/location/e/i;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/i;->hx:Lcom/baidu/location/e/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/i;

    invoke-direct {v0}, Lcom/baidu/location/e/i;-><init>()V

    sput-object v0, Lcom/baidu/location/e/i;->hx:Lcom/baidu/location/e/i;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/i;->hx:Lcom/baidu/location/e/i;

    return-object v0
.end method

.method private bZ()V
    .locals 5

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/e/i;->hC:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/baidu/location/e/i;->hC:Z

    iget-object v0, p0, Lcom/baidu/location/e/i;->hA:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/location/e/i$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/location/e/i$b;-><init>(Lcom/baidu/location/e/i;Lcom/baidu/location/e/i$1;)V

    sget v3, Lcom/baidu/location/b/k;->cy:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/baidu/location/e/i;->hD:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hC:Z

    :goto_0
    return-void
.end method

.method static synthetic do(Lcom/baidu/location/e/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/e/i;->hC:Z

    return p0
.end method

.method static synthetic for(Lcom/baidu/location/e/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/e/i;->bZ()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/e/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/e/i;->hz:Z

    return p0
.end method

.method static synthetic if(Lcom/baidu/location/e/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/i;->hD:Z

    return p1
.end method


# virtual methods
.method public bT()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hz:Z

    return-void
.end method

.method public bU()V
    .locals 5

    iget-boolean v0, p0, Lcom/baidu/location/e/i;->hy:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hz:Z

    iget-boolean v1, p0, Lcom/baidu/location/e/i;->hD:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/baidu/location/e/i;->hz:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/e/i;->hA:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/location/e/i$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/location/e/i$b;-><init>(Lcom/baidu/location/e/i;Lcom/baidu/location/e/i$1;)V

    sget v3, Lcom/baidu/location/b/k;->cy:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hD:Z

    :cond_2
    return-void
.end method

.method public declared-synchronized bV()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/e/i;->hy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    new-instance v1, Lcom/baidu/location/e/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/e/i$a;-><init>(Lcom/baidu/location/e/i;Lcom/baidu/location/e/i$1;)V

    iput-object v1, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hB:Z

    invoke-direct {p0}, Lcom/baidu/location/e/i;->bZ()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hz:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hy:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bX()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/e/i$a;-><init>(Lcom/baidu/location/e/i;Lcom/baidu/location/e/i$1;)V

    iput-object v0, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/e/i;->hB:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/baidu/location/e/i;->bZ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hB:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public declared-synchronized bY()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/e/i;->hy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hz:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/i;->hy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/i;->hE:Lcom/baidu/location/e/i$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
