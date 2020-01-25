.class public final Lcom/baidu/location/LocationClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;
.implements Lcom/baidu/location/e/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/LocationClient$a;,
        Lcom/baidu/location/LocationClient$b;
    }
.end annotation


# static fields
.field private static final lA:I = 0x9

.field private static final lC:I = 0x7

.field private static final lK:I = 0x5

.field private static final lL:I = 0xc

.field private static final lN:I = 0x6

.field private static final lO:I = 0x2

.field private static final lV:I = 0xb

.field private static final lZ:I = 0x4

.field private static final lk:I = 0xa

.field private static final lm:Ljava/lang/String; = "baidu_location_Client"

.field private static final lp:I = 0x1

.field private static final lt:I = 0x3e8

.field private static final lw:I = 0x3

.field private static final lx:I = 0x8


# instance fields
.field private l0:Z

.field private l1:Lcom/baidu/location/e/p;

.field private l2:Ljava/util/ArrayList;

.field private lB:Z

.field private lD:Z

.field private final lE:Landroid/os/Messenger;

.field private lF:Landroid/content/Context;

.field private lG:Z

.field private lH:Landroid/os/Messenger;

.field private lI:J

.field private lJ:Lcom/baidu/location/LocationClientOption;

.field private lM:Ljava/lang/Boolean;

.field private lP:Z

.field private lQ:J

.field private lR:J

.field private lS:Landroid/content/ServiceConnection;

.field private lT:Ljava/lang/String;

.field private lU:Lcom/baidu/location/BDLocation;

.field private lW:Ljava/lang/String;

.field private lX:Z

.field private lY:Ljava/lang/String;

.field private lj:Z

.field private ll:Lcom/baidu/location/LocationClient$a;

.field private ln:Z

.field private final lo:Ljava/lang/Object;

.field private lq:Lcom/baidu/location/LocationClient$b;

.field private lr:Ljava/lang/Boolean;

.field private ls:Lcom/baidu/location/d/a;

.field private lu:Ljava/lang/Boolean;

.field private lv:Z

.field private ly:Lcom/baidu/location/BDLocationListener;

.field private lz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lQ:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lY:Ljava/lang/String;

    new-instance v3, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v3}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v3, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lP:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    new-instance v4, Lcom/baidu/location/LocationClient$a;

    invoke-direct {v4, p0, v2}, Lcom/baidu/location/LocationClient$a;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lz:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lX:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lB:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lj:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->lo:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lI:J

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lR:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->ly:Lcom/baidu/location/BDLocationListener;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lW:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lv:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->l0:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->lu:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->lr:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lM:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lG:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->ln:Z

    new-instance v0, Lcom/baidu/location/b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b;-><init>(Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lS:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lQ:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lY:Ljava/lang/String;

    new-instance v3, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v3}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v3, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lP:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    new-instance v4, Lcom/baidu/location/LocationClient$a;

    invoke-direct {v4, p0, v2}, Lcom/baidu/location/LocationClient$a;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lz:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lX:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lB:Z

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lj:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/LocationClient;->lo:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lI:J

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lR:J

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->ly:Lcom/baidu/location/BDLocationListener;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->lW:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lv:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->l0:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->lu:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/LocationClient;->lr:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lM:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->lG:Z

    iput-boolean v3, p0, Lcom/baidu/location/LocationClient;->ln:Z

    new-instance v0, Lcom/baidu/location/b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b;-><init>(Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lS:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/location/e/p;

    iget-object p2, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1, p2, v0, p0}, Lcom/baidu/location/e/p;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/e/p$a;)V

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    invoke-virtual {p1}, Lcom/baidu/location/e/p;->cq()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private byte(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->l0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->ln:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->lG:Z

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/BDLocationListener;

    invoke-interface {v1, p1}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic byte(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dM()V

    return-void
.end method

.method static synthetic byte(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic case(Lcom/baidu/location/LocationClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/LocationClient;->l0:Z

    return p0
.end method

.method static synthetic char(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDLocationListener;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private dH()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packName"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prodName"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "coorType"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "addrType"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "openGPS"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->openGps:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "location_change_notify"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "scanSpan"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "timeOut"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->timeOut:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->priority:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "map"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lu:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "import"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lr:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "needDirect"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaptag"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedpoiregion"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedPoiRegion:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedregular"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedRegular:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaptagd"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isneedaltitude"

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private dI()V
    .locals 5

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/location/e/p;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0, v3, v4, p0}, Lcom/baidu/location/e/p;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/e/p$a;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    invoke-virtual {v0}, Lcom/baidu/location/e/p;->cq()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    invoke-virtual {v0}, Lcom/baidu/location/e/p;->cp()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lM:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_bdls_v2.9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lW:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    const-class v4, Lcom/baidu/location/f;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v3, "debug_dev"

    iget-boolean v4, p0, Lcom/baidu/location/LocationClient;->lD:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    if-nez v3, :cond_3

    new-instance v3, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v3}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v3, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    :cond_3
    const-string v3, "cache_exception"

    iget-object v4, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->isIgnoreCacheException:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "kill_process"

    iget-object v4, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->isIgnoreKillProcess:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/location/LocationClient;->lS:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->lP:Z

    :goto_0
    return-void
.end method

.method private dJ()V
    .locals 5

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lP:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lS:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lo:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x0

    :try_start_2
    iget-boolean v3, p0, Lcom/baidu/location/LocationClient;->lB:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    iget-object v4, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    invoke-virtual {v3, v4}, Lcom/baidu/location/LocationClient$a;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->lB:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_2
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/location/d/a;->a2()V

    :cond_2
    iput-object v1, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->lX:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->lv:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->lP:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->lG:Z

    iput-boolean v2, p0, Lcom/baidu/location/LocationClient;->ln:Z

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method private dK()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private dL()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private dM()V
    .locals 7

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/LocationClient;->lI:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lX:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lv:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/LocationClient;->lR:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lX:Z

    if-eqz v0, :cond_4

    :cond_2
    const/16 v0, 0x16

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-boolean v3, p0, Lcom/baidu/location/LocationClient;->lX:Z

    if-eqz v3, :cond_3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "isWaitingLocTag"

    iget-boolean v5, p0, Lcom/baidu/location/LocationClient;->lX:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/LocationClient;->lQ:J

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->lz:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/baidu/location/LocationClient;->lB:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    if-nez v3, :cond_5

    new-instance v3, Lcom/baidu/location/LocationClient$b;

    invoke-direct {v3, p0, v2}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V

    iput-object v3, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    :cond_5
    iget-object v2, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    iget-object v4, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/location/LocationClient$a;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/baidu/location/LocationClient;->lB:Z

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic do(Lcom/baidu/location/LocationClient;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dH()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic do(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->void(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->lj:Z

    return p1
.end method

.method private e(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->lX:Z

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/LocationClientOption;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v1, p1}, Lcom/baidu/location/LocationClientOption;->equals(Lcom/baidu/location/LocationClientOption;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget v1, v1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget v2, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lo:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lcom/baidu/location/LocationClient;->lB:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    iget-object v5, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    invoke-virtual {v2, v5}, Lcom/baidu/location/LocationClient$a;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->lB:Z

    :cond_1
    iget v0, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lB:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/location/LocationClient$b;

    invoke-direct {v0, p0, v3}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    iget-object v2, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    iget v5, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    int-to-long v5, v5

    invoke-virtual {v0, v2, v5, v6}, Lcom/baidu/location/LocationClient$a;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/baidu/location/LocationClient;->lB:Z

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    :goto_0
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0, p1}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/16 p1, 0xf

    :try_start_3
    invoke-static {v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dH()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dL()V

    return-void
.end method

.method static synthetic else(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dJ()V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dI()V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->i(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->lP:Z

    return p1
.end method

.method public static getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;
    .locals 5

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, p1}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object p0

    const/4 p1, 0x1

    aget-wide v1, p0, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const/4 p1, 0x0

    aget-wide v1, p0, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    return-object v0
.end method

.method static synthetic goto(Lcom/baidu/location/LocationClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/LocationClient;->ln:Z

    return p0
.end method

.method static synthetic h(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    return-object p0
.end method

.method private h(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "locStr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ly:Lcom/baidu/location/BDLocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/LocationClientOption;->isDisableCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ly:Lcom/baidu/location/BDLocationListener;

    invoke-interface {v0, p1}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    :cond_1
    return-void
.end method

.method private i(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDNotifyListener;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/baidu/location/d/a;->for(Lcom/baidu/location/BDNotifyListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/baidu/location/LocationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/LocationClient;->dK()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$b;)Lcom/baidu/location/LocationClient$b;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lM:Ljava/lang/Boolean;

    return-object p1
.end method

.method private if(Landroid/os/Message;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lP:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "locStr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/location/BDLocation;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lI:J

    :cond_1
    invoke-direct {p0, p2}, Lcom/baidu/location/LocationClient;->k(I)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->h(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/LocationClient;->if(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->byte(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/LocationClient;->lX:Z

    return p0
.end method

.method static synthetic if(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->ln:Z

    return p1
.end method

.method static synthetic int(Lcom/baidu/location/LocationClient;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->lM:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic int(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic int(Lcom/baidu/location/LocationClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->lB:Z

    return p1
.end method

.method private j(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDLocationListener;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/baidu/location/LocationClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/LocationClient;->lG:Z

    return p0
.end method

.method private k(I)V
    .locals 4

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    :cond_0
    iget-boolean p1, p0, Lcom/baidu/location/LocationClient;->lz:Z

    const/16 v0, 0x43

    const/16 v1, 0x42

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    iget-boolean p1, p1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v2, 0x3d

    if-eq p1, v2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/baidu/location/LocationClient;->lv:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v2, 0xa1

    if-ne p1, v2, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/BDLocationListener;

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-interface {v2, v3}, Lcom/baidu/location/BDLocationListener;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/LocationClient;->lz:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/LocationClient;->lR:J

    :cond_5
    :goto_1
    return-void
.end method

.method private k(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDLocationListener;

    iput-object p1, p0, Lcom/baidu/location/LocationClient;->ly:Lcom/baidu/location/BDLocationListener;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic long(Lcom/baidu/location/LocationClient;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->lo:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic new(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    return-object p0
.end method

.method static synthetic new(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->j(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic try(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic try(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient;->k(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic void(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$b;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/LocationClient;->lq:Lcom/baidu/location/LocationClient$b;

    return-object p0
.end method

.method private void(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDNotifyListener;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/location/d/a;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/baidu/location/d/a;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClient;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ls:Lcom/baidu/location/d/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/d/a;->do(Lcom/baidu/location/BDNotifyListener;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/location/b/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->lT:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KEY=%s;SHA1=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lT:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/location/b/j;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please setting key from Manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastKnownLocation()Lcom/baidu/location/BDLocation;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lU:Lcom/baidu/location/BDLocation;

    return-object v0
.end method

.method public getLocOption()Lcom/baidu/location/LocationClientOption;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lJ:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.1.3"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lP:Z

    return v0
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->ln:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/LocationClient;->lG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "please set a non-null listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerNotify(Lcom/baidu/location/BDNotifyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerNotifyLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeNotifyEvent(Lcom/baidu/location/BDNotifyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestLocation()I
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/LocationClient;->lQ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x6

    return v0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public requestNotifyLocation()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestOfflineLocation()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l2:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public setLocOption(Lcom/baidu/location/LocationClientOption;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/location/e/p;

    iget-object v1, p0, Lcom/baidu/location/LocationClient;->lF:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/baidu/location/e/p;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/e/p$a;)V

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    invoke-virtual {v0}, Lcom/baidu/location/e/p;->cq()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->l0:Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/LocationClient;->l0:Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/LocationClient;->l1:Lcom/baidu/location/e/p;

    return-void
.end method

.method public unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->ll:Lcom/baidu/location/LocationClient$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "please set a non-null listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateLocation(Landroid/location/Location;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/LocationClient;->lE:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x39

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/baidu/location/LocationClient;->lH:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
