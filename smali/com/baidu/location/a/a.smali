.class public Lcom/baidu/location/a/a;
.super Landroid/app/Service;

# interfaces
.implements Lcom/baidu/location/LLSInterface;
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/a$a;
    }
.end annotation


# static fields
.field static l8:Lcom/baidu/location/a/a$a;

.field private static mc:J


# instance fields
.field private l7:Landroid/os/HandlerThread;

.field private l9:Z

.field ma:Landroid/os/Messenger;

.field private mb:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/a;->ma:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->l9:Z

    return-void
.end method

.method public static dN()J
    .locals 2

    sget-wide v0, Lcom/baidu/location/a/a;->mc:J

    return-wide v0
.end method

.method public static dO()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/location/a/a;->l8:Lcom/baidu/location/a/a$a;

    return-object v0
.end method

.method private dP()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->db()V

    invoke-static {}, Lcom/baidu/location/e/i;->bW()Lcom/baidu/location/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/i;->bY()V

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->h()V

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/f;->bG()V

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cE()V

    invoke-static {}, Lcom/baidu/location/e/e;->bv()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->by()V

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cR()V

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/m;->ba()V

    invoke-static {}, Lcom/baidu/location/e/o;->ch()V

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/c;->br()V

    invoke-static {}, Lcom/baidu/location/e/h;->bI()Lcom/baidu/location/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/h;->bJ()V

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service has stoped ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/location/a/a;->l9:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method private dQ()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cN()V

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c4()V

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    invoke-static {}, Lcom/baidu/location/e/m;->a9()Lcom/baidu/location/e/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/m;->bh()V

    invoke-static {}, Lcom/baidu/location/c/b;->aZ()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->a0()V

    invoke-static {}, Lcom/baidu/location/e/e;->bv()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->bx()V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/a/a;->dQ()V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a;->m(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a;->l(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/a/a;->dP()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a;->n(Landroid/os/Message;)V

    return-void
.end method

.method private l(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/e/c;->char(Landroid/os/Message;)V

    return-void
.end method

.method private m(Landroid/os/Message;)V
    .locals 2

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service register ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/e/c;->long(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/f;->bD()V

    invoke-static {}, Lcom/baidu/location/e/d;->aR()Lcom/baidu/location/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/d;->aQ()V

    return-void
.end method

.method private n(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/e/c;->goto(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getVersion()D
    .locals 2

    const-wide v0, 0x4018851ec0000000L    # 6.130000114440918

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/c;->bl:Ljava/lang/String;

    const-string v0, "sign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/c;->bk:Ljava/lang/String;

    const-string v0, "kill_process"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/location/a/a;->l9:Z

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/a/a;->ma:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/a/a;->mc:J

    invoke-static {}, Lcom/baidu/location/e/n;->a()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/a/a;->l7:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/baidu/location/a/a;->l7:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/a/a;->mb:Landroid/os/Looper;

    new-instance p1, Lcom/baidu/location/a/a$a;

    iget-object v0, p0, Lcom/baidu/location/a/a;->mb:Landroid/os/Looper;

    invoke-direct {p1, p0, v0}, Lcom/baidu/location/a/a$a;-><init>(Lcom/baidu/location/a/a;Landroid/os/Looper;)V

    sput-object p1, Lcom/baidu/location/a/a;->l8:Lcom/baidu/location/a/a$a;

    new-instance p1, Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/a/a;->l8:Lcom/baidu/location/a/a$a;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/baidu/location/a/a;->ma:Landroid/os/Messenger;

    sget-object p1, Lcom/baidu/location/a/a;->l8:Lcom/baidu/location/a/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/location/a/a$a;->sendEmptyMessage(I)Z

    const-string p1, "baidu_location_service"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidu location service start1 ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/baidu/location/a/a;->l8:Lcom/baidu/location/a/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a$a;->sendEmptyMessage(I)Z

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUnBind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
