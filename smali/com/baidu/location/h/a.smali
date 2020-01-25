.class public Lcom/baidu/location/h/a;
.super Lcom/baidu/location/h/g;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/h/a$a;,
        Lcom/baidu/location/h/a$b;,
        Lcom/baidu/location/h/a$c;
    }
.end annotation


# static fields
.field private static final jA:I = 0xbb8

.field private static jD:Ljava/lang/String;

.field private static jE:Lcom/baidu/location/h/a;

.field private static jM:I


# instance fields
.field private jB:Landroid/location/GpsStatus;

.field private jC:Lcom/baidu/location/h/a$a;

.field private jF:I

.field private final jG:I

.field private jH:J

.field private jI:Lcom/baidu/location/h/a$c;

.field private jJ:Landroid/os/Handler;

.field private jK:Landroid/content/Context;

.field private jL:Z

.field private jN:Lcom/baidu/location/h/a$b;

.field private jO:Landroid/location/Location;

.field private final jP:J

.field private jQ:Landroid/location/LocationManager;

.field private jq:Ljava/util/HashMap;

.field private jr:Z

.field private final js:J

.field private final jt:I

.field private ju:I

.field private jv:J

.field private jw:Ljava/lang/String;

.field private final jx:I

.field private jy:Z

.field private final jz:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/baidu/location/h/g;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/baidu/location/h/a;->jP:J

    const-wide/16 v0, 0x2328

    iput-wide v0, p0, Lcom/baidu/location/h/a;->js:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/h/a;->jN:Lcom/baidu/location/h/a$b;

    iput-object v0, p0, Lcom/baidu/location/h/a;->jI:Lcom/baidu/location/h/a$c;

    iput-object v0, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/h/a;->jv:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/location/h/a;->jr:Z

    iput-boolean v3, p0, Lcom/baidu/location/h/a;->jy:Z

    iput-object v0, p0, Lcom/baidu/location/h/a;->jw:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/h/a;->jL:Z

    iput-wide v1, p0, Lcom/baidu/location/h/a;->jH:J

    iput-object v0, p0, Lcom/baidu/location/h/a;->jJ:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/h/a;->jG:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/h/a;->jt:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/h/a;->jz:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/location/h/a;->jx:I

    return-void
.end method

.method static synthetic B(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/baidu/location/h/a;->jD:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic byte(Lcom/baidu/location/h/a;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/h/a;->jq:Ljava/util/HashMap;

    return-object p0
.end method

.method public static cL()Lcom/baidu/location/h/a;
    .locals 1

    sget-object v0, Lcom/baidu/location/h/a;->jE:Lcom/baidu/location/h/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/h/a;

    invoke-direct {v0}, Lcom/baidu/location/h/a;-><init>()V

    sput-object v0, Lcom/baidu/location/h/a;->jE:Lcom/baidu/location/h/a;

    :cond_0
    sget-object v0, Lcom/baidu/location/h/a;->jE:Lcom/baidu/location/h/a;

    return-object v0
.end method

.method static synthetic case(Lcom/baidu/location/h/a;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/h/a;->ju:I

    return p0
.end method

.method private case(Landroid/location/Location;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    sget v1, Lcom/baidu/location/h/a;->jM:I

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "satellites"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-nez v1, :cond_1

    sget-boolean v1, Lcom/baidu/location/b/k;->cj:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/baidu/location/h/a;->jw:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {p1, v3, v4}, Landroid/location/Location;->setTime(J)V

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    float-to-double v5, p1

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v5, v7

    double-to-float p1, v5

    iget-object v5, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasSpeed()Z

    move-result v5

    if-nez v5, :cond_3

    const/high16 p1, -0x40800000    # -1.0f

    :cond_3
    move v10, p1

    sget p1, Lcom/baidu/location/h/a;->jM:I

    if-nez p1, :cond_4

    :try_start_1
    iget-object v5, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "satellites"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v8, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getBearing()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, p1

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/h/a;->jw:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/baidu/location/h/a;->if(DDF)V

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/baidu/location/e/k;->b6()Lcom/baidu/location/e/k;

    move-result-object p1

    iget-object v3, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {p1, v3}, Lcom/baidu/location/e/k;->try(Landroid/location/Location;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/baidu/location/e/h;->bI()Lcom/baidu/location/e/h;

    move-result-object p1

    iget-object v3, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {p1, v3}, Lcom/baidu/location/e/h;->for(Landroid/location/Location;)V

    :cond_5
    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cH()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/baidu/location/e/c;->l(Ljava/lang/String;)V

    sget p1, Lcom/baidu/location/h/a;->jM:I

    if-le p1, v1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-static {p1, v2}, Lcom/baidu/location/e/o;->if(Landroid/location/Location;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/location/h/e;->de()Lcom/baidu/location/h/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/h/e;->cY()Z

    move-result p1

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/b;->cM()Lcom/baidu/location/h/h;

    move-result-object v1

    new-instance v2, Lcom/baidu/location/h/h;

    invoke-direct {v2, v1}, Lcom/baidu/location/h/h;-><init>(Lcom/baidu/location/h/h;)V

    invoke-static {v2}, Lcom/baidu/location/e/a;->a(Lcom/baidu/location/h/h;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/baidu/location/e/a;->a(J)V

    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1}, Lcom/baidu/location/e/a;->a(Landroid/location/Location;)V

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;)V

    if-nez p1, :cond_6

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/h/h;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/e/a;->if()Landroid/location/Location;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/location/e/o;->do(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    iput-object v0, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    return-void
.end method

.method private char(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/h/a;->jJ:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/h/a;->jJ:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/h/a;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/h/a;->jF:I

    return p1
.end method

.method static synthetic do(Lcom/baidu/location/h/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/h/a;->jH:J

    return-wide p1
.end method

.method static synthetic do(Lcom/baidu/location/h/a;)Lcom/baidu/location/h/a$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    return-object p0
.end method

.method static synthetic do(Lcom/baidu/location/h/a;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/h/a;->char(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic do(Lcom/baidu/location/h/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/h/a;->jr:Z

    return p1
.end method

.method static synthetic else(I)I
    .locals 0

    sput p0, Lcom/baidu/location/h/a;->jM:I

    return p0
.end method

.method public static else(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/h/a;->long(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/baidu/location/h/a;->jD:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic for(Lcom/baidu/location/h/a;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static goto(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/h/a;->long(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&g_tp=0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private goto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/h/a;->jL:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cH()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/h/a;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/a;->ju:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/h/a;->ju:I

    return v0
.end method

.method static synthetic if(Lcom/baidu/location/h/a;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/h/a;->ju:I

    return p1
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Lcom/baidu/location/h/m;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/m;I)I

    move-result p0

    return p0
.end method

.method private if(Lcom/baidu/location/h/m;I)I
    .locals 6

    sget v0, Lcom/baidu/location/h/a;->jM:I

    sget v1, Lcom/baidu/location/b/k;->cq:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    sget v0, Lcom/baidu/location/h/a;->jM:I

    sget v1, Lcom/baidu/location/b/k;->b7:I

    const/4 v3, 0x4

    if-gt v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/h/m;->c()D

    move-result-wide v0

    sget v4, Lcom/baidu/location/b/k;->cQ:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_2

    return v2

    :cond_2
    sget v4, Lcom/baidu/location/b/k;->bW:F

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Lcom/baidu/location/h/m;->b()D

    move-result-wide v0

    sget p1, Lcom/baidu/location/b/k;->ck:F

    float-to-double v4, p1

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_4

    return v2

    :cond_4
    sget p1, Lcom/baidu/location/b/k;->cA:F

    float-to-double v4, p1

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_5

    return v3

    :cond_5
    sget p1, Lcom/baidu/location/b/k;->bJ:I

    if-lt p2, p1, :cond_6

    return v2

    :cond_6
    sget p1, Lcom/baidu/location/b/k;->cC:I

    if-gt p2, p1, :cond_7

    return v3

    :cond_7
    iget-object p1, p0, Lcom/baidu/location/h/a;->jq:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/baidu/location/h/a;->if(Ljava/util/HashMap;)I

    move-result p1

    return p1

    :cond_8
    const/4 p1, 0x3

    return p1
.end method

.method private if(Ljava/util/HashMap;)I
    .locals 13

    iget v0, p0, Lcom/baidu/location/h/a;->jF:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-direct {p0, v5}, Lcom/baidu/location/h/a;->if(Ljava/util/List;)[D

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x2

    new-array p1, p1, [D

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [D

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-wide v9, v7, v3

    int-to-double v11, v8

    mul-double/2addr v9, v11

    aput-wide v9, v7, v3

    aget-wide v8, v7, v6

    mul-double/2addr v8, v11

    aput-wide v8, v7, v6

    aget-wide v8, p1, v3

    aget-wide v10, v7, v3

    add-double/2addr v8, v10

    aput-wide v8, p1, v3

    aget-wide v8, p1, v6

    aget-wide v10, v7, v6

    add-double/2addr v8, v10

    aput-wide v8, p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    aget-wide v7, p1, v3

    int-to-double v4, v4

    div-double/2addr v7, v4

    aput-wide v7, p1, v3

    aget-wide v7, p1, v6

    div-double/2addr v7, v4

    aput-wide v7, p1, v6

    aget-wide v4, p1, v3

    aget-wide v7, p1, v6

    invoke-direct {p0, v4, v5, v7, v8}, Lcom/baidu/location/h/a;->new(DD)[D

    move-result-object p1

    aget-wide v4, p1, v3

    sget v0, Lcom/baidu/location/b/k;->cI:I

    int-to-double v7, v0

    cmpg-double v0, v4, v7

    if-gtz v0, :cond_3

    return v6

    :cond_3
    aget-wide v2, p1, v3

    sget p1, Lcom/baidu/location/b/k;->bQ:I

    int-to-double v4, p1

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x3

    return p1
.end method

.method static synthetic if(Lcom/baidu/location/h/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/h/a;->jv:J

    return-wide p1
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/a;->jB:Landroid/location/GpsStatus;

    return-object p1
.end method

.method private if(Landroid/location/GpsSatellite;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_0

    add-int/lit8 v5, v5, -0x20

    :cond_0
    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/baidu/location/h/a;->jF:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baidu/location/h/a;->jF:I

    :cond_2
    const/16 p1, 0x40

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Landroid/location/GpsSatellite;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/h/a;->if(Landroid/location/GpsSatellite;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/a;->jq:Ljava/util/HashMap;

    return-object p1
.end method

.method private if(DDF)V
    .locals 8

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/e/f;->gx:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x4052496801711948L    # 73.146973

    cmpg-double v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    const-wide v2, 0x4060e81600f34507L    # 135.252686

    cmpl-double v0, p1, v2

    if-gtz v0, :cond_3

    const-wide v2, 0x404b212096787ce9L    # 54.258807

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_3

    const-wide v2, 0x402d35ae81882adcL    # 14.604847

    cmpg-double v0, p3, v2

    if-ltz v0, :cond_3

    const/high16 v0, 0x41900000    # 18.0f

    cmpl-float p5, p5, v0

    if-lez p5, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v2, Lcom/baidu/location/b/k;->bG:D

    sub-double v2, p1, v2

    sget-wide v4, Lcom/baidu/location/b/k;->b4:D

    sub-double/2addr v4, p3

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    double-to-int p5, v2

    mul-double/2addr v4, v6

    double-to-int v0, v4

    const/4 v2, 0x2

    if-lez p5, :cond_2

    const/16 v3, 0x32

    if-ge p5, v3, :cond_2

    if-lez v0, :cond_2

    if-ge v0, v3, :cond_2

    mul-int/2addr v0, v3

    add-int/2addr v0, p5

    shr-int/lit8 p1, v0, 0x2

    and-int/lit8 p2, v0, 0x3

    sget-boolean p3, Lcom/baidu/location/b/k;->cM:Z

    if-eqz p3, :cond_3

    sget-object p3, Lcom/baidu/location/b/k;->b2:[B

    aget-byte p1, p3, p1

    mul-int/2addr p2, v2

    shr-int/2addr p1, p2

    and-int/lit8 p1, p1, 0x3

    move v1, p1

    goto :goto_0

    :cond_2
    sget-object p5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v0, "&ll=%.5f|%.5f"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p5, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "&im="

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p5

    invoke-virtual {p5}, Lcom/baidu/location/b/c;->L()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    sput-wide p1, Lcom/baidu/location/b/k;->cp:D

    sput-wide p3, Lcom/baidu/location/b/k;->cE:D

    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/baidu/location/e/f;->m(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget p1, Lcom/baidu/location/b/k;->co:I

    if-eq p1, v1, :cond_4

    sput v1, Lcom/baidu/location/b/k;->co:I

    :cond_4
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/h/a;->case(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/h/a;->if(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/h/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/h/a;->goto(Z)V

    return-void
.end method

.method private if(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/h/e;->de()Lcom/baidu/location/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/e;->cY()Z

    move-result v0

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/b;->cM()Lcom/baidu/location/h/h;

    move-result-object v1

    new-instance v2, Lcom/baidu/location/h/h;

    invoke-direct {v2, v1}, Lcom/baidu/location/h/h;-><init>(Lcom/baidu/location/h/h;)V

    invoke-static {v2}, Lcom/baidu/location/e/a;->a(Lcom/baidu/location/h/h;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/baidu/location/e/a;->a(J)V

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1}, Lcom/baidu/location/e/a;->a(Landroid/location/Location;)V

    invoke-static {p1}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/e/a;->a()Lcom/baidu/location/h/h;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/e/a;->if()Landroid/location/Location;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/baidu/location/e/o;->do(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static if(Landroid/location/Location;Landroid/location/Location;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz p2, :cond_3

    sget p2, Lcom/baidu/location/b/k;->co:I

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    invoke-static {}, Lcom/baidu/location/b/h;->W()Lcom/baidu/location/b/h;

    move-result-object p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/baidu/location/b/h;->for(DD)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    cmpg-float p2, v2, v3

    if-gez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    sget p1, Lcom/baidu/location/b/k;->cg:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    sget p1, Lcom/baidu/location/b/k;->cx:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :cond_5
    sget p1, Lcom/baidu/location/b/k;->ch:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_7

    sget p1, Lcom/baidu/location/b/k;->cO:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_6

    move v0, v1

    :cond_6
    return v0

    :cond_7
    cmpl-float p0, p0, v3

    if-lez p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method private if(Ljava/util/List;)[D
    .locals 9

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    if-eqz v2, :cond_1

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v2

    float-to-double v7, v2

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/baidu/location/h/a;->int(DD)[D

    move-result-object v2

    aget-wide v5, v0, v4

    aget-wide v7, v2, v4

    add-double/2addr v5, v7

    aput-wide v5, v0, v4

    aget-wide v4, v0, v3

    aget-wide v6, v2, v3

    add-double/2addr v4, v6

    aput-wide v4, v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    aget-wide v1, v0, v4

    int-to-double v5, p1

    div-double/2addr v1, v5

    aput-wide v1, v0, v4

    aget-wide v1, v0, v3

    div-double/2addr v1, v5

    aput-wide v1, v0, v3

    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic int(Lcom/baidu/location/h/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/h/a;->jy:Z

    return p0
.end method

.method private int(DD)[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, p1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    const/4 p3, 0x1

    aput-wide p1, v0, p3

    return-object v0
.end method

.method public static long(Landroid/location/Location;)Ljava/lang/String;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide v3, 0x4081580000000000L    # 555.0

    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    :cond_4
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x5

    sget v1, Lcom/baidu/location/h/a;->jM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x7

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static synthetic new(Lcom/baidu/location/h/a;)Landroid/location/GpsStatus;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/h/a;->jB:Landroid/location/GpsStatus;

    return-object p0
.end method

.method private new(DD)[D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_1

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    const-wide v0, 0x4070e00000000000L    # 270.0

    goto :goto_0

    :cond_1
    div-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    :cond_2
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    aput-wide p1, v2, v3

    const/4 p1, 0x1

    aput-wide v0, v2, p1

    return-object v2
.end method

.method static synthetic try(Lcom/baidu/location/h/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/h/a;->jJ:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized cA()V
    .locals 8

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
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/h/a;->jK:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/baidu/location/h/a;->jK:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    new-instance v0, Lcom/baidu/location/h/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/h/a$a;-><init>(Lcom/baidu/location/h/a;Lcom/baidu/location/h/i;)V

    iput-object v0, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    new-instance v0, Lcom/baidu/location/h/a$c;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/h/a$c;-><init>(Lcom/baidu/location/h/a;Lcom/baidu/location/h/i;)V

    iput-object v0, p0, Lcom/baidu/location/h/a;->jI:Lcom/baidu/location/h/a$c;

    iget-object v2, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    const-string v3, "passive"

    const-wide/16 v4, 0x2328

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/location/h/a;->jI:Lcom/baidu/location/h/a$c;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    new-instance v0, Lcom/baidu/location/h/i;

    invoke-direct {v0, p0}, Lcom/baidu/location/h/i;-><init>(Lcom/baidu/location/h/a;)V

    iput-object v0, p0, Lcom/baidu/location/h/a;->jJ:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cB()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    return-object v0
.end method

.method public cC()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cD()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/k;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"s\":\"%f\",\"n\":\"%d\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    :goto_0
    float-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [D

    invoke-static {}, Lcom/baidu/location/b/h;->W()Lcom/baidu/location/b/h;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/baidu/location/b/h;->for(DD)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v8, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-string v10, "gps2gcj"

    invoke-static {v4, v5, v8, v9, v10}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v4

    aget-wide v8, v4, v6

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    if-gtz v5, :cond_2

    aget-wide v8, v4, v7

    cmpl-double v5, v8, v10

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v4, v6

    iget-object v5, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v4, v7

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v4, v6

    iget-object v5, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v4, v7

    move v5, v6

    :goto_1
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aget-wide v10, v4, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v6

    aget-wide v10, v4, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v9, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v3

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x5

    sget v2, Lcom/baidu/location/h/a;->jM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v0, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"in_cn\":\"0\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, ",\"h\":%.2f}}"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}}"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public declared-synchronized cE()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cI()V

    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/h/a;->jI:Lcom/baidu/location/h/a$c;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    iput-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cF()V
    .locals 8

    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cA()V

    iget-boolean v0, p0, Lcom/baidu/location/h/a;->jy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/baidu/location/h/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/h/a$b;-><init>(Lcom/baidu/location/h/a;Lcom/baidu/location/h/i;)V

    iput-object v0, p0, Lcom/baidu/location/h/a;->jN:Lcom/baidu/location/h/a$b;

    iget-object v2, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/location/h/a;->jN:Lcom/baidu/location/h/a$b;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/h/a;->jy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public cG()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h/a;->jO:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/h/a;->long(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cH()Z
    .locals 6

    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cC()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/h/a;->jH:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/baidu/location/h/a;->jr:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/baidu/location/h/a;->jv:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/h/a;->jL:Z

    return v0
.end method

.method public cI()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/h/a;->jy:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/h/a;->jN:Lcom/baidu/location/h/a$b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/h/a;->jN:Lcom/baidu/location/h/a$b;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/h/a;->jQ:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/h/a;->jC:Lcom/baidu/location/h/a$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/b/k;->b1:I

    sput v0, Lcom/baidu/location/b/k;->co:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/h/a;->jN:Lcom/baidu/location/h/a$b;

    iput-boolean v0, p0, Lcom/baidu/location/h/a;->jy:Z

    invoke-direct {p0, v0}, Lcom/baidu/location/h/a;->goto(Z)V

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/h/a;->jw:Ljava/lang/String;

    return-object v0
.end method

.method public cK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/h/a;->jy:Z

    return v0
.end method

.method public else(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cF()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/h/a;->cI()V

    :goto_0
    return-void
.end method
