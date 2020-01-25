.class Lcom/baidu/location/h/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/baidu/location/h/a;

.field private c:J

.field private final d:I

.field private e:Z

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/baidu/location/h/a;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/h/a$a;->a:J

    iput-wide v0, p0, Lcom/baidu/location/h/a$a;->c:J

    const/16 p1, 0x190

    iput p1, p0, Lcom/baidu/location/h/a$a;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/h/a$a;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->f:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/h/a;Lcom/baidu/location/h/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/h/a$a;-><init>(Lcom/baidu/location/h/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/h/a$a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/h/a$a;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/baidu/location/h/m;

    iget-object v3, p0, Lcom/baidu/location/h/a$a;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/baidu/location/h/a$a;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/location/h/a$a;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/location/h/a$a;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/location/h/m;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/location/h/m;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    iget-object v4, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v4}, Lcom/baidu/location/h/a;->case(Lcom/baidu/location/h/a;)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Lcom/baidu/location/h/m;I)I

    move-result v3

    sput v3, Lcom/baidu/location/b/k;->b1:I

    sget v3, Lcom/baidu/location/b/k;->b1:I

    if-lez v3, :cond_1

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "&nmea=%.1f|%.1f&g_tp=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/baidu/location/h/m;->c()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2}, Lcom/baidu/location/h/m;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    sget v6, Lcom/baidu/location/b/k;->b1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/h/a;->B(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput v0, Lcom/baidu/location/b/k;->b1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput v0, Lcom/baidu/location/b/k;->b1:I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/baidu/location/h/a$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/location/h/a$a;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/h/a$a;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/h/a$a;->g:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/h/a$a;->e:Z

    :cond_2
    const-string v0, "$GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/baidu/location/h/a$a;->e:Z

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "$GPGSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->f:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v0, "$GPGSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/h/a$a;->i:Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/h/a$a;->c:J

    return-void
.end method

.method public onGpsStatusChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v0}, Lcom/baidu/location/h/a;->for(Lcom/baidu/location/h/a;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1}, Lcom/baidu/location/h/a;->int(Lcom/baidu/location/h/a;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1}, Lcom/baidu/location/h/a;->new(Lcom/baidu/location/h/a;)Landroid/location/GpsStatus;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v0}, Lcom/baidu/location/h/a;->for(Lcom/baidu/location/h/a;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1}, Lcom/baidu/location/h/a;->for(Lcom/baidu/location/h/a;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v0}, Lcom/baidu/location/h/a;->new(Lcom/baidu/location/h/a;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_0
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1}, Lcom/baidu/location/h/a;->new(Lcom/baidu/location/h/a;)Landroid/location/GpsStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v0, v2}, Lcom/baidu/location/h/a;->do(Lcom/baidu/location/h/a;I)I

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v0, v2}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;I)I

    iget-object v0, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v1

    sget v3, Lcom/baidu/location/b/k;->bH:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v1}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;)I

    :cond_5
    iget-object v1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    iget-object v3, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {v3}, Lcom/baidu/location/h/a;->byte(Lcom/baidu/location/h/a;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Landroid/location/GpsSatellite;Ljava/util/HashMap;)Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/baidu/location/h/a;->else(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1, v1}, Lcom/baidu/location/h/a;->do(Lcom/baidu/location/h/a;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1, v2}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Z)V

    invoke-static {v2}, Lcom/baidu/location/h/a;->else(I)I

    :catch_0
    :goto_2
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1}, Lcom/baidu/location/h/a;->int(Lcom/baidu/location/h/a;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/location/e/f;->bA()Lcom/baidu/location/e/f;

    move-result-object p1

    iget-boolean p1, p1, Lcom/baidu/location/e/f;->gB:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    sput p1, Lcom/baidu/location/b/k;->b1:I

    return-void

    :cond_1
    if-eqz p3, :cond_5

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x9

    if-lt p1, p2, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x96

    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-virtual {p1}, Lcom/baidu/location/h/a;->cH()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p1}, Lcom/baidu/location/h/a;->try(Lcom/baidu/location/h/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/location/h/a$a;->b:Lcom/baidu/location/h/a;

    invoke-static {p2}, Lcom/baidu/location/h/a;->try(Lcom/baidu/location/h/a;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_0
    return-void
.end method
