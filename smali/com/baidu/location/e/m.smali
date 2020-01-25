.class public Lcom/baidu/location/e/m;
.super Lcom/baidu/location/e/b;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/m$b;,
        Lcom/baidu/location/e/m$a;
    }
.end annotation


# static fields
.field private static fW:Lcom/baidu/location/e/m;


# instance fields
.field private f0:Ljava/lang/String;

.field private f1:Lcom/baidu/location/h/h;

.field private f2:Ljava/util/List;

.field private f3:J

.field private f4:J

.field private f5:Lcom/baidu/location/h/h;

.field private f6:Z

.field private f7:Z

.field private f8:D

.field private f9:Lcom/baidu/location/h/f;

.field public final fP:Landroid/os/Handler;

.field final fS:I

.field public fT:Lcom/baidu/location/e/b$a;

.field private volatile fU:Z

.field private fV:Z

.field private fX:J

.field private fY:Z

.field private fZ:Lcom/baidu/location/e/m$b;

.field private ga:Z

.field private gb:D

.field private gc:J

.field private gd:Z

.field private ge:Z

.field private gf:Z

.field private gg:Lcom/baidu/location/Address;

.field private gh:Lcom/baidu/location/BDLocation;

.field private gi:Lcom/baidu/location/BDLocation;

.field final gj:I

.field private gk:Ljava/lang/String;

.field private gl:Lcom/baidu/location/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/baidu/location/e/b;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/baidu/location/e/m;->gj:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/location/e/m;->fS:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->gd:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/e/m;->fT:Lcom/baidu/location/e/b$a;

    iput-object v1, p0, Lcom/baidu/location/e/m;->gk:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iput-object v1, p0, Lcom/baidu/location/e/m;->gl:Lcom/baidu/location/h/f;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f1:Lcom/baidu/location/h/h;

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->ge:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->fU:Z

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->ga:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/location/e/m;->f3:J

    iput-wide v3, p0, Lcom/baidu/location/e/m;->f4:J

    iput-object v1, p0, Lcom/baidu/location/e/m;->gg:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->fV:Z

    iput-wide v3, p0, Lcom/baidu/location/e/m;->gc:J

    iput-wide v3, p0, Lcom/baidu/location/e/m;->fX:J

    iput-object v1, p0, Lcom/baidu/location/e/m;->fZ:Lcom/baidu/location/e/m$b;

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->f6:Z

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->fY:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->gf:Z

    new-instance v0, Lcom/baidu/location/e/b$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/b$b;-><init>(Lcom/baidu/location/e/b;)V

    iput-object v0, p0, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->f7:Z

    new-instance v0, Lcom/baidu/location/e/b$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/b$a;-><init>(Lcom/baidu/location/e/b;)V

    iput-object v0, p0, Lcom/baidu/location/e/m;->fT:Lcom/baidu/location/e/b$a;

    return-void
.end method

.method private a6()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private a7()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fU:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fY:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->gf:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fV:Z

    invoke-direct {p0}, Lcom/baidu/location/e/m;->bi()V

    return-void
.end method

.method public static a9()Lcom/baidu/location/e/m;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/m;->fW:Lcom/baidu/location/e/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/m;

    invoke-direct {v0}, Lcom/baidu/location/e/m;-><init>()V

    sput-object v0, Lcom/baidu/location/e/m;->fW:Lcom/baidu/location/e/m;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/m;->fW:Lcom/baidu/location/e/m;

    return-object v0
.end method

.method private bg()Z
    .locals 14

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v4

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/h/k;->c6()Lcom/baidu/location/h/f;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/baidu/location/h/h;->dy()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/baidu/location/h/f;->dl()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/c/d;->long()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/c/d;->case()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v0

    if-gez v4, :cond_3

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/c/d;->byte()D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v8

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v9

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c6()Lcom/baidu/location/h/f;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lcom/baidu/location/c/d$c;->do:Lcom/baidu/location/c/d$c;

    sget-object v13, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v8 .. v13}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v4, 0x42

    if-ne v1, v4, :cond_5

    iget-boolean v1, p0, Lcom/baidu/location/e/m;->fU:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/baidu/location/b/l;

    invoke-direct {v1}, Lcom/baidu/location/b/l;-><init>()V

    iget-wide v4, p0, Lcom/baidu/location/e/m;->fX:J

    invoke-virtual {v1, v4, v5}, Lcom/baidu/location/b/l;->do(J)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/b/l;->if(J)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/b/l;->for(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/location/b/l;->int(J)V

    const-string v2, "ofs"

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/baidu/location/h/h;->dx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    const-string v2, "&offtag=1"

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2, v0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    const/16 v0, 0xa1

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->fU:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/o;->if(Lcom/baidu/location/b/l;)V

    iput-boolean v7, p0, Lcom/baidu/location/e/m;->fY:Z

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    iput-object v2, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    move v6, v7

    :cond_5
    return v6
.end method

.method private bi()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/e/o;->cm()Lcom/baidu/location/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/o;->co()V

    :cond_0
    return-void
.end method

.method private byte(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->for(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->int(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method static synthetic do(Lcom/baidu/location/e/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/e/m;->ga:Z

    return p0
.end method

.method static synthetic do(Lcom/baidu/location/e/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/m;->ga:Z

    return p1
.end method

.method private do(Lcom/baidu/location/h/f;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->dc()Lcom/baidu/location/h/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/m;->fR:Lcom/baidu/location/h/f;

    iget-object v0, p0, Lcom/baidu/location/e/m;->fR:Lcom/baidu/location/h/f;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/m;->fR:Lcom/baidu/location/h/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/m;->fR:Lcom/baidu/location/h/f;

    invoke-virtual {p1, v0}, Lcom/baidu/location/h/f;->try(Lcom/baidu/location/h/f;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private do(Lcom/baidu/location/h/h;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/m;->fQ:Lcom/baidu/location/h/h;

    iget-object v0, p0, Lcom/baidu/location/e/m;->fQ:Lcom/baidu/location/h/h;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/m;->fQ:Lcom/baidu/location/h/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/m;->fQ:Lcom/baidu/location/h/h;

    invoke-virtual {p1, v0}, Lcom/baidu/location/h/h;->case(Lcom/baidu/location/h/h;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private for(Landroid/os/Message;)V
    .locals 12

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cD()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/b/k;->bX:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/b/k;->bP:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-wide v3, p0, Lcom/baidu/location/e/m;->gb:D

    iget-wide v5, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    move-object v11, v0

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v3, 0x0

    aget v0, v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/e/m;->gg:Lcom/baidu/location/Address;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fV:Z

    invoke-direct {p0, v2}, Lcom/baidu/location/e/m;->int(Landroid/os/Message;)V

    :cond_4
    :goto_0
    iput-object v1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    iput-object v2, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/e/c;->if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic for(Lcom/baidu/location/e/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/e/m;->f6:Z

    return p0
.end method

.method static synthetic if(Lcom/baidu/location/e/m;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->new(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/e/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/e/m;->fY:Z

    return p0
.end method

.method static synthetic if(Lcom/baidu/location/e/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/m;->f6:Z

    return p1
.end method

.method private if(Lcom/baidu/location/h/f;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/m;->gl:Lcom/baidu/location/h/f;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0, v2}, Lcom/baidu/location/h/e;->if(Lcom/baidu/location/h/f;Lcom/baidu/location/h/f;F)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private if(Lcom/baidu/location/h/h;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/m;->f1:Lcom/baidu/location/h/h;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/location/h/h;->case(Lcom/baidu/location/h/h;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private int(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->ge:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/m;->fX:J

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->new(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/e/m;->fU:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/m;->fX:J

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c3()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/e/m;->ga:Z

    iget-object p1, p0, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/location/e/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/e/m$a;-><init>(Lcom/baidu/location/e/m;Lcom/baidu/location/e/x;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private new(Landroid/os/Message;)V
    .locals 6

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->fU:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/m;->f3:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v0}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/baidu/location/e/m;->fX:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/location/e/m;->fX:J

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/b/l;->do(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fU:Z

    iget-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    invoke-direct {p0, v1}, Lcom/baidu/location/e/m;->do(Lcom/baidu/location/h/h;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/location/e/m;->gd:Z

    iget-object v1, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    invoke-direct {p0, v1}, Lcom/baidu/location/e/m;->do(Lcom/baidu/location/h/f;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/baidu/location/e/m;->gd:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/baidu/location/e/m;->fV:Z

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/baidu/location/e/m;->f4:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7530

    cmp-long p1, v0, v3

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    iput-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    iput-object v2, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    :cond_3
    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->cb()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/l;->cg()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v0}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_5
    invoke-virtual {p0, v2}, Lcom/baidu/location/e/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v0}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_6
    new-instance p1, Lcom/baidu/location/BDLocation;

    invoke-direct {p1}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/m;->gc:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-lez p1, :cond_7

    iput-wide v0, p0, Lcom/baidu/location/e/m;->gc:J

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object p1

    const-string v0, "TypeCriteriaException"

    invoke-virtual {p1, v0}, Lcom/baidu/location/b/o;->j(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iget-object v3, p0, Lcom/baidu/location/e/m;->gk:Ljava/lang/String;

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/e/m;->gk:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v2, p0, Lcom/baidu/location/e/m;->gk:Ljava/lang/String;

    :cond_9
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/location/b/l;->if(J)V

    iget-object v3, p0, Lcom/baidu/location/e/m;->fT:Lcom/baidu/location/e/b$a;

    invoke-virtual {v3, v1}, Lcom/baidu/location/e/b$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/e/m;->fQ:Lcom/baidu/location/h/h;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/e/m;->fR:Lcom/baidu/location/h/f;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    iget-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/baidu/location/h/h;->dt()I

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/baidu/location/g/b;

    iget-object v2, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iget-object v3, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    invoke-direct {v1, v2, v3, v0}, Lcom/baidu/location/g/b;-><init>(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Z)V

    invoke-virtual {v1}, Lcom/baidu/location/g/b;->cz()V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/baidu/location/e/m;->bg()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/location/e/m;->fQ:Lcom/baidu/location/h/h;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/e/m;->fR:Lcom/baidu/location/h/f;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    :cond_b
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/baidu/location/e/m;->fZ:Lcom/baidu/location/e/m$b;

    if-nez v1, :cond_c

    new-instance v1, Lcom/baidu/location/e/m$b;

    invoke-direct {v1, p0, v2}, Lcom/baidu/location/e/m$b;-><init>(Lcom/baidu/location/e/m;Lcom/baidu/location/e/x;)V

    iput-object v1, p0, Lcom/baidu/location/e/m;->fZ:Lcom/baidu/location/e/m$b;

    :cond_c
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/j;->cP()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/location/h/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/c/d;->if(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/location/e/m;->fZ:Lcom/baidu/location/e/m$b;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->f6:Z

    :cond_d
    :goto_1
    iget-boolean v1, p0, Lcom/baidu/location/e/m;->ge:Z

    if-ne v1, v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->ge:Z

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c9()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/e/c;->case(Landroid/os/Message;)I

    move-result p1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_e

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/d;->long()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lcom/baidu/location/e/x;

    invoke-direct {p1, p0}, Lcom/baidu/location/e/x;-><init>(Lcom/baidu/location/e/m;)V

    invoke-virtual {p1}, Lcom/baidu/location/e/x;->start()V

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/m;->f3:J

    return-void
.end method

.method private try(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isWaitingLocTag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/e/w;->a()Lcom/baidu/location/e/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/w;->b()V

    :cond_0
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/e/c;->else(Landroid/os/Message;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "this type %d is illegal"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->for(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->int(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->byte(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a4()V
    .locals 14

    iget-object v0, p0, Lcom/baidu/location/e/m;->fZ:Lcom/baidu/location/e/m$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/baidu/location/e/m;->f6:Z

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/baidu/location/e/m;->f6:Z

    iget-object v3, p0, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/h/g;->cH()Z

    move-result v3

    const/16 v4, 0x15

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cD()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/b/k;->bX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/b/k;->bP:Z

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-wide v5, p0, Lcom/baidu/location/e/m;->gb:D

    iget-wide v7, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v11

    move-object v13, v0

    invoke-static/range {v5 .. v13}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e/m;->gg:Lcom/baidu/location/Address;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    :goto_1
    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_5
    iget-boolean v3, p0, Lcom/baidu/location/e/m;->fY:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_6
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/baidu/location/b/l;->for(J)V

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->long()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v5

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v6

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c6()Lcom/baidu/location/h/f;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v10, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v5 .. v10}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_8

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    goto :goto_2

    :cond_7
    move-object v0, v3

    :cond_8
    :goto_2
    const/16 v5, 0x43

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v6

    if-ne v6, v5, :cond_f

    :cond_9
    iget-boolean v6, p0, Lcom/baidu/location/e/m;->gd:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v2, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-static {}, Lcom/baidu/location/c/b;->aZ()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/c/b;->byte(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    sget-object v4, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v6, "all"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v1, v2

    :cond_c
    sget-boolean v4, Lcom/baidu/location/b/k;->bX:Z

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v1, v2

    :cond_d
    sget-boolean v4, Lcom/baidu/location/b/k;->bP:Z

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    move v1, v2

    :cond_e
    if-nez v1, :cond_f

    invoke-virtual {v0, v5}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_f
    :goto_4
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/baidu/location/b/l;->int(J)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-eq v1, v5, :cond_10

    iput-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v0

    const-string v1, "ofs"

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_11

    goto :goto_5

    :cond_10
    iput-object v3, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_11

    :goto_5
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    invoke-virtual {v1}, Lcom/baidu/location/h/h;->dx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/o;->aW()V

    goto :goto_6

    :cond_12
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    iput-object v3, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    :goto_6
    iput-object v3, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    goto/16 :goto_1
.end method

.method public a5()Lcom/baidu/location/BDLocation;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    return-object v0
.end method

.method public a8()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->ga:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/m;->new(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->ga:Z

    :cond_0
    return-void
.end method

.method public ba()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fU:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->ga:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->fY:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/e/m;->gf:Z

    invoke-virtual {p0}, Lcom/baidu/location/e/m;->bd()V

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->f7:Z

    return-void
.end method

.method public bb()V
    .locals 8

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->long()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->goto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v2

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v3

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->c6()Lcom/baidu/location/h/f;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v7, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/c/b;->aZ()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/b;->byte(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    sget-object v3, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    sget-boolean v3, Lcom/baidu/location/b/k;->bX:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v2, v1

    :cond_3
    sget-boolean v3, Lcom/baidu/location/b/k;->bP:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    :cond_5
    return-void
.end method

.method public bc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    return-object v0
.end method

.method public bd()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    return-void
.end method

.method public be()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    return-object v0
.end method

.method public bf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->gd:Z

    return v0
.end method

.method public bh()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->ge:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/e/m;->fU:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/m;->f7:Z

    return-void
.end method

.method public do(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->f7:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/e/m;->try(Landroid/os/Message;)V

    return-void
.end method

.method public if(Landroid/os/Message;)V
    .locals 14

    iget-object v0, p0, Lcom/baidu/location/e/m;->fZ:Lcom/baidu/location/e/m$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/baidu/location/e/m;->f6:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/baidu/location/e/m;->f6:Z

    iget-object v2, p0, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDLocation;

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasAddr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/e/m;->gg:Lcom/baidu/location/Address;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/e/m;->gb:D

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/e/m;->gb:D

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/e/m;->gb:D

    :cond_3
    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/g;->cH()Z

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x15

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/h/g;->cD()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/baidu/location/b/k;->bX:Z

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/baidu/location/b/k;->bP:Z

    if-eqz p1, :cond_7

    :cond_4
    new-array p1, v3, [F

    iget-wide v5, p0, Lcom/baidu/location/e/m;->gb:D

    iget-wide v7, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v11

    move-object v13, p1

    invoke-static/range {v5 .. v13}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget p1, p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/baidu/location/e/m;->gg:Lcom/baidu/location/Address;

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_5
    iget-object p1, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_7
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "sky"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "wf"

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/m;->f4:J

    iput-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    return-void

    :cond_9
    iget-boolean v2, p0, Lcom/baidu/location/e/m;->fY:Z

    if-eqz v2, :cond_c

    new-array v0, v3, [F

    iget-object v2, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v5

    iget-object v2, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v9

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v11

    move-object v13, v0

    invoke-static/range {v5 .. v13}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    :cond_a
    aget v0, v0, v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    iput-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lcom/baidu/location/e/m;->gf:Z

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/baidu/location/e/m;->gf:Z

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    :cond_b
    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_c
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/baidu/location/b/l;->for(J)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    iget-object v5, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    const/4 v6, 0x1

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/baidu/location/h/h;->dt()I

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationWhere()I

    move-result v5

    if-eq v5, v3, :cond_d

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationWhere()I

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v5, 0xa7

    if-ne v3, v5, :cond_e

    new-instance v3, Lcom/baidu/location/g/b;

    iget-object v5, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iget-object v7, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    invoke-direct {v3, v5, v7, v6}, Lcom/baidu/location/g/b;-><init>(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Z)V

    invoke-virtual {v3}, Lcom/baidu/location/g/b;->cz()V

    :cond_e
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v8, 0xa1

    if-ne v3, v8, :cond_f

    sget-object v3, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v5, "all"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/baidu/location/b/h;->W()Lcom/baidu/location/b/h;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v3, v9, v10, v11, v12}, Lcom/baidu/location/b/h;->for(DD)Z

    move-result v3

    if-nez v3, :cond_f

    new-instance p1, Lcom/baidu/location/g/b;

    iget-object v0, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    invoke-direct {p1, v0, v1, v6}, Lcom/baidu/location/g/b;-><init>(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Z)V

    invoke-virtual {p1}, Lcom/baidu/location/g/b;->cz()V

    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void

    :cond_f
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    if-ne v3, v8, :cond_10

    const-string v3, "cl"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    if-ne v3, v8, :cond_10

    const-string v3, "wf"

    iget-object v5, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/baidu/location/e/m;->f4:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x7530

    cmp-long v3, v9, v11

    if-gez v3, :cond_10

    iput-object p1, p0, Lcom/baidu/location/e/m;->gi:Lcom/baidu/location/BDLocation;

    move v1, v6

    :cond_10
    if-eqz v1, :cond_11

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3, v5, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    goto :goto_0

    :cond_11
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lcom/baidu/location/e/c;->do(Lcom/baidu/location/BDLocation;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/e/m;->f4:J

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/location/b/l;->int(J)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    if-ne v3, v8, :cond_12

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    const-string v4, "ons"

    invoke-virtual {v3, v4}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    invoke-virtual {v4}, Lcom/baidu/location/h/h;->dx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    const-string v4, "onf"

    invoke-virtual {v3, v4}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    invoke-virtual {v4}, Lcom/baidu/location/h/h;->dx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    :cond_13
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/b/o;->aW()V

    :cond_14
    :goto_0
    invoke-static {p1}, Lcom/baidu/location/b/k;->do(Lcom/baidu/location/BDLocation;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v1, :cond_16

    iput-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    goto :goto_1

    :cond_15
    iput-object v2, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    :cond_16
    :goto_1
    sget-object v1, Lcom/baidu/location/e/m;->fN:Ljava/lang/String;

    const-string v3, "ssid\":\""

    const-string v4, "\""

    invoke-static {v1, v3, v4}, Lcom/baidu/location/b/k;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_17

    iget-object v3, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v1}, Lcom/baidu/location/h/f;->j(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/e/m;->gk:Ljava/lang/String;

    goto :goto_2

    :cond_17
    iput-object v2, p0, Lcom/baidu/location/e/m;->gk:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->long()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v8, :cond_18

    const-string v1, "cl"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    invoke-direct {p0, v1}, Lcom/baidu/location/e/m;->if(Lcom/baidu/location/h/h;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    const/4 v4, 0x0

    sget-object v6, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v7, Lcom/baidu/location/c/d$b;->do:Lcom/baidu/location/c/d$b;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    iget-object v1, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f1:Lcom/baidu/location/h/h;

    :cond_18
    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->long()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v8, :cond_19

    const-string v1, "wf"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    sget-object v6, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v7, Lcom/baidu/location/c/d$b;->do:Lcom/baidu/location/c/d$b;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/location/c/d;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    iget-object p1, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    iput-object p1, p0, Lcom/baidu/location/e/m;->gl:Lcom/baidu/location/h/f;

    :cond_19
    invoke-static {}, Lcom/baidu/location/c/b;->aZ()Lcom/baidu/location/c/b;

    move-result-object p1

    sget-object v1, Lcom/baidu/location/e/m;->fN:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/e/m;->f5:Lcom/baidu/location/h/h;

    iget-object v3, p0, Lcom/baidu/location/e/m;->f9:Lcom/baidu/location/h/f;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/baidu/location/c/b;->if(Ljava/lang/String;Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/h/k;->c9()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/baidu/location/c/d;->try()Lcom/baidu/location/c/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/d;->k()V

    :cond_1a
    invoke-direct {p0}, Lcom/baidu/location/e/m;->a7()V

    return-void
.end method

.method public int(Lcom/baidu/location/BDLocation;)V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/e/m;->bd()V

    iput-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    iget-object p1, p0, Lcom/baidu/location/e/m;->gh:Lcom/baidu/location/BDLocation;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setIndoorLocMode(Z)V

    return-void
.end method

.method public new(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/Address;
    .locals 11

    sget-object v0, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/b/k;->bX:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/b/k;->bP:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-wide v2, p0, Lcom/baidu/location/e/m;->gb:D

    iget-wide v4, p0, Lcom/baidu/location/e/m;->f8:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    move-object v10, v0

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/m;->gg:Lcom/baidu/location/Address;

    if-eqz p1, :cond_2

    return-object p1

    :cond_1
    iput-object v1, p0, Lcom/baidu/location/e/m;->f0:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/e/m;->f2:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/e/m;->fV:Z

    invoke-direct {p0, v1}, Lcom/baidu/location/e/m;->int(Landroid/os/Message;)V

    :cond_2
    return-object v1
.end method
