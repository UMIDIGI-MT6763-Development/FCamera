.class public abstract Lcom/baidu/location/h/k;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "wpa|wep"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public c0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c1()V
    .locals 0

    return-void
.end method

.method public c2()Lcom/baidu/location/h/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized c4()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public c5()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c6()Lcom/baidu/location/h/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c7()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c8()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c9()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cZ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public da()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized db()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public dc()Lcom/baidu/location/h/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public do(Ljava/util/List;)Lcom/baidu/location/h/f;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/baidu/location/h/f;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/baidu/location/h/f;-><init>(Ljava/util/List;J)V

    return-object v0
.end method
