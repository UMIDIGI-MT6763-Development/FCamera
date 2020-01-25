.class public Lcom/baidu/location/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# static fields
.field public static final c0:Ljava/lang/String; = "skys"

.field public static final c2:Ljava/lang/String; = "ons"

.field public static final cV:Ljava/lang/String; = "onf"

.field public static final cW:Ljava/lang/String; = "off"

.field public static final cX:Ljava/lang/String; = "skyf"

.field public static final cZ:Ljava/lang/String; = "ofs"


# instance fields
.field private c1:Ljava/lang/String;

.field private c3:J

.field private c4:I

.field private cR:J

.field private cS:Ljava/lang/String;

.field private cT:J

.field private cU:Ljava/lang/String;

.field private cY:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->cT:J

    iput-wide v0, p0, Lcom/baidu/location/b/l;->c3:J

    iput-wide v0, p0, Lcom/baidu/location/b/l;->cR:J

    iput-wide v0, p0, Lcom/baidu/location/b/l;->cY:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/b/l;->c4:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/l;->c1:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/l;->cU:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/l;->cS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aj()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->cT:J

    iput-wide v0, p0, Lcom/baidu/location/b/l;->c3:J

    iput-wide v0, p0, Lcom/baidu/location/b/l;->cR:J

    iput-wide v0, p0, Lcom/baidu/location/b/l;->cY:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/b/l;->c4:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/l;->c1:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/l;->cU:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/l;->cS:Ljava/lang/String;

    return-void
.end method

.method public ak()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/h/e;->de()Lcom/baidu/location/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/e;->c9()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "&cn=32"

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "&cn=%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/location/h/b;->cP()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/baidu/location/b/l;->c1:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/b/l;->c1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "&fir=%d&tim=%d&dsc=%d&det=%d&ded=%d&typ=%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/baidu/location/b/l;->c4:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-wide v6, p0, Lcom/baidu/location/b/l;->cT:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    iget-wide v6, p0, Lcom/baidu/location/b/l;->c3:J

    iget-wide v8, p0, Lcom/baidu/location/b/l;->cT:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    iget-wide v6, p0, Lcom/baidu/location/b/l;->cR:J

    iget-wide v8, p0, Lcom/baidu/location/b/l;->c3:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    iget-wide v6, p0, Lcom/baidu/location/b/l;->cY:J

    iget-wide v8, p0, Lcom/baidu/location/b/l;->cR:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    iget-object v6, p0, Lcom/baidu/location/b/l;->cU:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/b/l;->cS:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/location/b/c;->do(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public char(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/l;->cU:Ljava/lang/String;

    return-void
.end method

.method public do(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b/l;->cT:J

    return-void
.end method

.method public else(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/l;->cS:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/baidu/location/b/l;->cS:Ljava/lang/String;

    return-void
.end method

.method public for(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b/l;->cR:J

    return-void
.end method

.method public for(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/baidu/location/b/l;->c4:I

    return-void
.end method

.method public if(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b/l;->c3:J

    return-void
.end method

.method public int(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/b/l;->cY:J

    return-void
.end method
