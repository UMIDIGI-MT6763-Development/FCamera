.class public Lcom/baidu/location/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/e$a;
    }
.end annotation


# static fields
.field private static gs:Lcom/baidu/location/e/e;


# instance fields
.field private gr:I

.field private gt:Ljava/lang/String;

.field private gu:Lcom/baidu/location/e/e$a;

.field private gv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/e;->gv:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/e;->gt:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/e/e;->gu:Lcom/baidu/location/e/e$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/e/e;->gr:I

    return-void
.end method

.method public static declared-synchronized bv()Lcom/baidu/location/e/e;
    .locals 2

    const-class v0, Lcom/baidu/location/e/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/e;->gs:Lcom/baidu/location/e/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/e/e;

    invoke-direct {v1}, Lcom/baidu/location/e/e;-><init>()V

    sput-object v1, Lcom/baidu/location/e/e;->gs:Lcom/baidu/location/e/e;

    :cond_0
    sget-object v1, Lcom/baidu/location/e/e;->gs:Lcom/baidu/location/e/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic if(Lcom/baidu/location/e/e;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/e/e;->gr:I

    return p1
.end method

.method static synthetic if(Lcom/baidu/location/e/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/e;->gt:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/e/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/e;->gv:Z

    return p1
.end method


# virtual methods
.method public bt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/e;->gv:Z

    return v0
.end method

.method public bu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/e;->gt:Ljava/lang/String;

    return-object v0
.end method

.method public bw()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/e/e;->gr:I

    return v0
.end method

.method public bx()V
    .locals 4

    new-instance v0, Lcom/baidu/location/e/e$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/e$a;-><init>(Lcom/baidu/location/e/e;)V

    iput-object v0, p0, Lcom/baidu/location/e/e;->gu:Lcom/baidu/location/e/e$a;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/e;->gu:Lcom/baidu/location/e/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public by()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/e;->gu:Lcom/baidu/location/e/e$a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/e;->gu:Lcom/baidu/location/e/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/e;->gu:Lcom/baidu/location/e/e$a;

    return-void
.end method
