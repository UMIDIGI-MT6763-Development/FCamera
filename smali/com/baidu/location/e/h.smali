.class public Lcom/baidu/location/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/h$a;
    }
.end annotation


# static fields
.field private static final g3:Ljava/lang/String; = "1"

.field private static final g7:Ljava/lang/String; = "%d_%02d_%02d"

.field private static final gN:J = 0x5265c00L

.field private static final gX:Ljava/lang/String; = "utf-8"

.field private static final gZ:I = 0x190

.field private static final hi:Ljava/lang/String; = "http://loc.map.baidu.com/cc.php"

.field private static final hj:Ljava/lang/String; = "0"

.field private static final hs:I = 0x2710

.field private static ht:Lcom/baidu/location/e/h; = null

.field public static hv:Ljava/lang/String; = "0"


# instance fields
.field private g0:Lcom/baidu/location/e/h$a;

.field private g1:I

.field private g2:J

.field private g4:I

.field private g5:I

.field private g6:I

.field g8:Ljava/lang/StringBuilder;

.field private g9:F

.field private gL:Landroid/os/Handler;

.field private gM:I

.field private gO:Ljava/lang/String;

.field private gP:D

.field private gQ:F

.field private gR:I

.field private gS:Z

.field private gT:D

.field private gU:I

.field private gV:I

.field private gW:Z

.field private gY:[B

.field private ha:D

.field hb:Landroid/location/Location;

.field hc:J

.field private hd:I

.field private he:D

.field private hf:Ljava/util/List;

.field hg:J

.field hh:D

.field private hk:Z

.field private hl:I

.field private hm:I

.field private hn:I

.field private ho:J

.field hp:D

.field hq:I

.field private hr:[B

.field hu:Landroid/location/Location;

.field private hw:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/e/h;->g1:I

    const-wide v1, 0x3fe6666660000000L    # 0.699999988079071

    iput-wide v1, p0, Lcom/baidu/location/e/h;->gT:D

    const-string v1, "3G|4G"

    iput-object v1, p0, Lcom/baidu/location/e/h;->gO:Ljava/lang/String;

    iput v0, p0, Lcom/baidu/location/e/h;->g5:I

    const v1, 0x4b000

    iput v1, p0, Lcom/baidu/location/e/h;->g6:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/baidu/location/e/h;->gM:I

    iput v0, p0, Lcom/baidu/location/e/h;->hn:I

    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    iput-wide v0, p0, Lcom/baidu/location/e/h;->gP:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/baidu/location/e/h;->ha:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/baidu/location/e/h;->he:D

    const/16 v0, 0x12c

    iput v0, p0, Lcom/baidu/location/e/h;->hw:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/location/e/h;->gR:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/e/h;->gV:I

    iput v0, p0, Lcom/baidu/location/e/h;->hm:I

    iput v1, p0, Lcom/baidu/location/e/h;->hd:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/e/h;->ho:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/h;->g0:Lcom/baidu/location/e/h$a;

    iput-boolean v1, p0, Lcom/baidu/location/e/h;->gS:Z

    iput-boolean v1, p0, Lcom/baidu/location/e/h;->gW:Z

    iput v1, p0, Lcom/baidu/location/e/h;->g4:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/e/h;->g9:F

    iput v4, p0, Lcom/baidu/location/e/h;->gQ:F

    iput-wide v2, p0, Lcom/baidu/location/e/h;->g2:J

    const/16 v4, 0x1f4

    iput v4, p0, Lcom/baidu/location/e/h;->gU:I

    iput-wide v2, p0, Lcom/baidu/location/e/h;->hg:J

    iput-object v0, p0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/location/e/h;->g8:Ljava/lang/StringBuilder;

    iput-wide v2, p0, Lcom/baidu/location/e/h;->hc:J

    iput-object v0, p0, Lcom/baidu/location/e/h;->gL:Landroid/os/Handler;

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    iput-object v0, p0, Lcom/baidu/location/e/h;->gY:[B

    iput v1, p0, Lcom/baidu/location/e/h;->hl:I

    iput-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    iput-boolean v1, p0, Lcom/baidu/location/e/h;->hk:Z

    iput v1, p0, Lcom/baidu/location/e/h;->hq:I

    const-wide v0, 0x405d0e4d1816773bL    # 116.22345545

    iput-wide v0, p0, Lcom/baidu/location/e/h;->hh:D

    const-wide v0, 0x40441f7206defd8dL    # 40.245667323

    iput-wide v0, p0, Lcom/baidu/location/e/h;->hp:D

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e/h;->gL:Landroid/os/Handler;

    return-void
.end method

.method public static bI()Lcom/baidu/location/e/h;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/h;->ht:Lcom/baidu/location/e/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/h;

    invoke-direct {v0}, Lcom/baidu/location/e/h;-><init>()V

    sput-object v0, Lcom/baidu/location/e/h;->ht:Lcom/baidu/location/e/h;

    :cond_0
    sget-object v0, Lcom/baidu/location/e/h;->ht:Lcom/baidu/location/e/h;

    return-object v0
.end method

.method private bL()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/e/h;->hc:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/e/h;->hl:I

    iput-object v0, p0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/e/h;->g9:F

    iput v0, p0, Lcom/baidu/location/e/h;->gQ:F

    return-void
.end method

.method private bM()V
    .locals 0

    return-void
.end method

.method private bN()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/e/h;->hv:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const/16 v2, 0x6e

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const/16 v2, 0x7e

    :goto_0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/e/h;->gY:[B

    array-length v0, v0

    iget-object v2, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/location/e/h;->gY:[B

    aget-byte v3, v3, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private bO()V
    .locals 5

    const-string v0, "6.1.3"

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    move v1, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/e/h;->hr:[B

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/b/c;->bm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/h;->q(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/h;->gY:[B

    return-void
.end method

.method private bP()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/h;->hk:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/h;->hk:Z

    sget-object v0, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/e/h;->r(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bS()V

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bO()V

    return-void
.end method

.method private bQ()Z
    .locals 7

    iget-boolean v0, p0, Lcom/baidu/location/e/h;->gS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/e/h;->gW:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/e/h;->g9:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/e/h;->he:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_0

    iget v0, p0, Lcom/baidu/location/e/h;->g4:I

    iget v3, p0, Lcom/baidu/location/e/h;->gM:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/baidu/location/e/h;->g4:I

    iget v0, p0, Lcom/baidu/location/e/h;->g4:I

    iget v3, p0, Lcom/baidu/location/e/h;->hw:I

    if-le v0, v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/e/h;->g2:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/baidu/location/e/h;->gR:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/baidu/location/e/h;->g4:I

    iput-boolean v1, p0, Lcom/baidu/location/e/h;->gW:Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/baidu/location/e/h;->g9:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/e/h;->he:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_6

    iput-boolean v2, p0, Lcom/baidu/location/e/h;->gW:Z

    iput v1, p0, Lcom/baidu/location/e/h;->g4:I

    iget v0, p0, Lcom/baidu/location/e/h;->g4:I

    iget v1, p0, Lcom/baidu/location/e/h;->gM:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/location/e/h;->g4:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/baidu/location/e/h;->g9:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/e/h;->gP:D

    cmpl-double v0, v3, v5

    if-gez v0, :cond_5

    iget v0, p0, Lcom/baidu/location/e/h;->gQ:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/e/h;->ha:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/baidu/location/e/h;->gV:I

    if-ne v0, v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/e/h;->g2:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/baidu/location/e/h;->hm:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/baidu/location/e/h;->gS:Z

    :cond_6
    :goto_1
    return v2
.end method

.method private bR()V
    .locals 5

    iget-wide v0, p0, Lcom/baidu/location/e/h;->hc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/h;->hc:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/baidu/location/e/h;->gM:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loc_navi_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_navi_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bL()V

    return-void

    :cond_1
    iget v0, p0, Lcom/baidu/location/e/h;->g5:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bQ()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bL()V

    return-void

    :cond_2
    sget-object v0, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/baidu/location/e/h;->if(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bL()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const/4 v3, 0x3

    iget v4, p0, Lcom/baidu/location/e/h;->hl:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [B

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "baidu/tempdata"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "intime.dat"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    new-instance v0, Lcom/baidu/location/e/t;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/t;-><init>(Lcom/baidu/location/e/h;)V

    invoke-virtual {v0}, Lcom/baidu/location/e/t;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    invoke-direct {p0}, Lcom/baidu/location/e/h;->bL()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/h;->g2:J

    :cond_8
    :goto_1
    return-void
.end method

.method private bS()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/h;->ho:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e/h;->g0:Lcom/baidu/location/e/h$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/e/h$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/h$a;-><init>(Lcom/baidu/location/e/h;)V

    iput-object v0, p0, Lcom/baidu/location/e/h;->g0:Lcom/baidu/location/e/h$a;

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/c;->do(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/e/h;->g0:Lcom/baidu/location/e/h$a;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/e/h$a;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/baidu/location/e/h;->bM()V

    return-void
.end method

.method private do(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/h;->new(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bR()V

    return-void
.end method

.method private for(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/high16 v1, -0x1000000

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/e/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/e/h;->gL:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic if(Lcom/baidu/location/e/h;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/e/h;->if(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private if(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    const-string v2, "\r\n"

    const-string v3, "multipart/form-data"

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    const/16 v4, 0x2710

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "POST"

    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "utf-8"

    invoke-virtual {p2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "connection"

    const-string v6, "keep-alive"

    invoke-virtual {p2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";boundary="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"location_dat\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v6, p1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v5, p1, v4, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    iget p2, p0, Lcom/baidu/location/e/h;->hd:I

    add-int/lit16 p2, p2, 0x190

    iput p2, p0, Lcom/baidu/location/e/h;->hd:I

    iget p2, p0, Lcom/baidu/location/e/h;->hd:I

    invoke-direct {p0, p2}, Lcom/baidu/location/e/h;->new(I)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    const-string p1, "1"
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const-string p1, "0"

    return-object p1
.end method

.method private if(Landroid/location/Location;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/h;->hc:J

    iget-wide v0, p0, Lcom/baidu/location/e/h;->hc:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/h;->int(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/h;->int(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/h;->int(I)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v1, :cond_1

    const/16 v0, -0x80

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    :goto_1
    iget-object v1, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/e/h;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/h;->do(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/e/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/h;->s(Ljava/lang/String;)V

    return-void
.end method

.method private if(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v0
.end method

.method private int(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/baidu/location/e/h;->for(I)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    aget-byte v2, p1, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private int(Landroid/location/Location;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iget-object v2, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v5, v3

    double-to-int v2, v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v5

    xor-int/2addr v5, v4

    if-lez v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v2, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v9, v0, Lcom/baidu/location/e/h;->hl:I

    if-le v9, v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    iget-object v4, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    iput-object v4, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    :cond_2
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    iget-object v9, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    if-eqz v9, :cond_3

    iget-object v10, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    iget-object v11, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    iget-object v9, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    iget-object v11, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    iget-object v9, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    iget-object v11, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const/4 v11, 0x2

    new-array v11, v11, [F

    iget-object v12, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    iget-object v14, v0, Lcom/baidu/location/e/h;->hb:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    iget-object v6, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    iget-object v6, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object/from16 v20, v11

    invoke-static/range {v12 .. v20}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, v0, Lcom/baidu/location/e/h;->hu:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getSpeed()F

    move-result v12

    long-to-float v13, v9

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    mul-float/2addr v11, v6

    mul-long/2addr v9, v9

    long-to-float v6, v9

    div-float/2addr v11, v6

    float-to-double v9, v11

    iget v6, v0, Lcom/baidu/location/e/h;->gQ:F

    float-to-double v11, v6

    cmpl-double v6, v9, v11

    if-lez v6, :cond_3

    double-to-float v6, v9

    iput v6, v0, Lcom/baidu/location/e/h;->gQ:F

    :cond_3
    iget-object v6, v0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_5

    const/16 v1, 0x20

    if-lez v8, :cond_4

    const/16 v1, 0x60

    int-to-byte v1, v1

    :cond_4
    if-lez v7, :cond_7

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    if-lez v8, :cond_6

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    :cond_6
    if-lez v7, :cond_7

    :goto_2
    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    :cond_7
    iget-object v2, v0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v5, :cond_8

    iget-object v1, v0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    const/16 v2, -0x80

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    iget-object v2, v0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method private new(I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v2, 0x8

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v5, "1980_01_01:0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v5, 0x320

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d_%02d_%02d"

    invoke-direct {p0, v2}, Lcom/baidu/location/e/h;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private new(Landroid/location/Location;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/h;->hg:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/baidu/location/e/h;->gU:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iget v1, p0, Lcom/baidu/location/e/h;->g9:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/e/h;->g9:F

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e/h;->hf:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bN()V

    invoke-direct {p0, p1}, Lcom/baidu/location/e/h;->if(Landroid/location/Location;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/location/e/h;->int(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget p1, p0, Lcom/baidu/location/e/h;->hl:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baidu/location/e/h;->hl:I

    :cond_3
    :goto_1
    return-void
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private p(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_f

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "on"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->g1:I

    :cond_0
    const-string p1, "bash"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bash"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/e/h;->gT:D

    :cond_1
    const-string p1, "net"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "net"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/e/h;->gO:Ljava/lang/String;

    :cond_2
    const-string p1, "tcon"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "tcon"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->g5:I

    :cond_3
    const-string p1, "tcsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "tcsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->g6:I

    :cond_4
    const-string p1, "per"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "per"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->gM:I

    :cond_5
    const-string p1, "chdron"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "chdron"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->hn:I

    :cond_6
    const-string p1, "spsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "spsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/e/h;->gP:D

    :cond_7
    const-string p1, "acsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "acsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/e/h;->ha:D

    :cond_8
    const-string p1, "stspsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "stspsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/e/h;->he:D

    :cond_9
    const-string p1, "drstsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "drstsh"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->hw:I

    :cond_a
    const-string p1, "stper"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "stper"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->gR:I

    :cond_b
    const-string p1, "nondron"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "nondron"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->gV:I

    :cond_c
    const-string p1, "nondrper"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "nondrper"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/e/h;->hm:I

    :cond_d
    const-string p1, "uptime"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "uptime"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/h;->ho:J

    :cond_e
    invoke-direct {p0}, Lcom/baidu/location/e/h;->bM()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_f
    return-void
.end method

.method private q(Ljava/lang/String;)[B
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v0, v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-byte v6, p1, v4

    add-int/lit8 v7, v5, 0x1

    xor-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v5, 0x1

    aput-byte v0, v2, v5

    aput-byte v1, v2, p1

    return-object v2
.end method

.method private r(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "%d_%02d_%02d"

    invoke-direct {p0, v3}, Lcom/baidu/location/e/h;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v5, :cond_0

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/baidu/location/e/h;->hd:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :goto_0
    if-gt v5, v1, :cond_2

    mul-int/lit16 v2, v5, 0x800

    int-to-long v2, v2

    :try_start_2
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/baidu/location/e/h;->p(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v2, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/baidu/location/b/e;->int:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v5, 0x8

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v5, "1980_01_01:0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v5, 0x320

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v1, :cond_4

    mul-int/lit16 v6, v5, 0x800

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v0, v7, v4, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    sget-object v7, Lcom/baidu/location/b/c;->bn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lt v5, v1, :cond_5

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_5
    mul-int/lit16 v5, v5, 0x800

    int-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public bJ()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/e/h;->hk:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/h;->hk:Z

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bL()V

    return-void
.end method

.method public bK()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/e/h;->gL:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/e/u;

    invoke-direct {v1, p0}, Lcom/baidu/location/e/u;-><init>(Lcom/baidu/location/e/h;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public for(Landroid/location/Location;)V
    .locals 8

    iget-boolean v0, p0, Lcom/baidu/location/e/h;->hk:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/e/h;->bP()V

    :cond_0
    iget v0, p0, Lcom/baidu/location/e/h;->g1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/baidu/location/e/e;->bv()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->bw()I

    move-result v0

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/baidu/location/e/h;->gT:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/e/h;->gO:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/j;->cP()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/location/h/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/location/e/h;->g5:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/location/e/h;->hd:I

    iget v1, p0, Lcom/baidu/location/e/h;->g6:I

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/h;->gL:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/e/s;

    invoke-direct {v1, p0, p1}, Lcom/baidu/location/e/s;-><init>(Lcom/baidu/location/e/h;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
