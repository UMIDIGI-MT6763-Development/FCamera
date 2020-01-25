.class public Lcom/baidu/location/h/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# instance fields
.field public kA:C

.field public kB:I

.field public kC:I

.field public kD:I

.field public ku:I

.field private kv:Z

.field public kw:J

.field public kx:I

.field public ky:I

.field public kz:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/h/h;->ku:I

    iput v0, p0, Lcom/baidu/location/h/h;->ky:I

    iput v0, p0, Lcom/baidu/location/h/h;->kB:I

    iput v0, p0, Lcom/baidu/location/h/h;->kC:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/baidu/location/h/h;->kD:I

    iput v1, p0, Lcom/baidu/location/h/h;->kx:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/h/h;->kw:J

    iput v0, p0, Lcom/baidu/location/h/h;->kz:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/h/h;->kA:C

    iput-boolean v0, p0, Lcom/baidu/location/h/h;->kv:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/h/h;->kw:J

    return-void
.end method

.method public constructor <init>(IIIIIC)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/location/h/h;->ku:I

    iput v0, p0, Lcom/baidu/location/h/h;->ky:I

    iput v0, p0, Lcom/baidu/location/h/h;->kB:I

    iput v0, p0, Lcom/baidu/location/h/h;->kC:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/baidu/location/h/h;->kD:I

    iput v1, p0, Lcom/baidu/location/h/h;->kx:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/h/h;->kw:J

    iput v0, p0, Lcom/baidu/location/h/h;->kz:I

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/baidu/location/h/h;->kA:C

    iput-boolean v0, p0, Lcom/baidu/location/h/h;->kv:Z

    iput p1, p0, Lcom/baidu/location/h/h;->ku:I

    iput p2, p0, Lcom/baidu/location/h/h;->ky:I

    iput p3, p0, Lcom/baidu/location/h/h;->kB:I

    iput p4, p0, Lcom/baidu/location/h/h;->kC:I

    iput p5, p0, Lcom/baidu/location/h/h;->kz:I

    iput-char p6, p0, Lcom/baidu/location/h/h;->kA:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/location/h/h;->kw:J

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/h/h;)V
    .locals 7

    iget v1, p1, Lcom/baidu/location/h/h;->ku:I

    iget v2, p1, Lcom/baidu/location/h/h;->ky:I

    iget v3, p1, Lcom/baidu/location/h/h;->kB:I

    iget v4, p1, Lcom/baidu/location/h/h;->kC:I

    iget v5, p1, Lcom/baidu/location/h/h;->kz:I

    iget-char v6, p1, Lcom/baidu/location/h/h;->kA:C

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/h/h;-><init>(IIIIIC)V

    return-void
.end method


# virtual methods
.method public case(Lcom/baidu/location/h/h;)Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/h;->ku:I

    iget v1, p1, Lcom/baidu/location/h/h;->ku:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->ky:I

    iget v1, p1, Lcom/baidu/location/h/h;->ky:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kC:I

    iget v1, p1, Lcom/baidu/location/h/h;->kC:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kB:I

    iget p1, p1, Lcom/baidu/location/h/h;->kB:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dA()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lcom/baidu/location/h/h;->ky:I

    add-int/lit8 v1, v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/h/h;->ku:I

    add-int/lit8 v1, v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/h/h;->kC:I

    add-int/lit8 v1, v1, 0x36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/location/h/h;->kB:I

    add-int/lit16 v1, v1, 0xcb

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dB()Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/h;->ku:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->ky:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kC:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kB:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dr()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/h/h;->kv:Z

    return-void
.end method

.method public ds()Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/h;->ku:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->ky:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dt()I
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/h;->kB:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/location/h/h;->kB:I

    const/16 v1, 0x1cc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1d2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public du()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/h/h;->kw:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dv()Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/h;->ku:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->ky:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kC:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kB:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dw()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/baidu/location/h/h;->ds()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "<cell-tower>\n<mcc>%d</mcc><mnc>%d</mnc><lac>%d</lac><ci>%d</ci><rssi>%d</rssi></cell-tower>"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/location/h/h;->kB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/baidu/location/h/h;->kC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/baidu/location/h/h;->ku:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/baidu/location/h/h;->ky:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/baidu/location/h/h;->kz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dx()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&nw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lcom/baidu/location/h/h;->kA:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/location/h/h;->kB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->kC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->ku:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->ky:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->kz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/baidu/location/h/h;->kv:Z

    if-eqz v1, :cond_0

    const-string v1, "&newcl=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dy()Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/h/h;->ku:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->ky:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kC:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/h/h;->kB:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dz()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "cell=%d|%d|%d|%d:%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/baidu/location/h/h;->kB:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->kC:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->ku:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->ky:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Lcom/baidu/location/h/h;->kz:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
