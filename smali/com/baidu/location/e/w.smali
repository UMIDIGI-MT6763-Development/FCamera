.class Lcom/baidu/location/e/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/w$a;
    }
.end annotation


# static fields
.field private static b:Lcom/baidu/location/e/w;


# instance fields
.field private c:Lcom/baidu/location/h/f;

.field private d:Lcom/baidu/location/h/h;

.field private e:J

.field private final f:J

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/w;->c:Lcom/baidu/location/h/f;

    iput-object v0, p0, Lcom/baidu/location/e/w;->d:Lcom/baidu/location/h/h;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/e/w;->e:J

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/baidu/location/e/w;->f:J

    iput-object v0, p0, Lcom/baidu/location/e/w;->g:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/e/w;
    .locals 2

    const-class v0, Lcom/baidu/location/e/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/w;->b:Lcom/baidu/location/e/w;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/e/w;

    invoke-direct {v1}, Lcom/baidu/location/e/w;-><init>()V

    sput-object v1, Lcom/baidu/location/e/w;->b:Lcom/baidu/location/e/w;

    :cond_0
    sget-object v1, Lcom/baidu/location/e/w;->b:Lcom/baidu/location/e/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/baidu/location/e/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/e/w;->g:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "locationtag"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    const-string p1, "locationtag"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_0
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object p1

    const/16 v1, 0x259

    invoke-virtual {p1, v0, v1}, Lcom/baidu/location/e/c;->if(Landroid/os/Bundle;I)V

    return-void
.end method

.method private a(Lcom/baidu/location/h/f;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->dc()Lcom/baidu/location/h/f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/location/h/f;->try(Lcom/baidu/location/h/f;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Lcom/baidu/location/h/h;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/location/h/h;->case(Lcom/baidu/location/h/h;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/e/w;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/w;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/baidu/location/e/w;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/e/w;->e:J

    iget-object v0, p0, Lcom/baidu/location/e/w;->c:Lcom/baidu/location/h/f;

    invoke-direct {p0, v0}, Lcom/baidu/location/e/w;->a(Lcom/baidu/location/h/f;)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/e/w;->d:Lcom/baidu/location/h/h;

    invoke-direct {p0, v1}, Lcom/baidu/location/e/w;->a(Lcom/baidu/location/h/h;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e/w;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/baidu/location/e/w;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/w;->d:Lcom/baidu/location/h/h;

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->dc()Lcom/baidu/location/h/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/w;->c:Lcom/baidu/location/h/f;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/baidu/location/e/w;->d:Lcom/baidu/location/h/h;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/h/h;->ds()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/e/w;->d:Lcom/baidu/location/h/h;

    invoke-virtual {v1}, Lcom/baidu/location/h/h;->dx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lcom/baidu/location/e/w;->c:Lcom/baidu/location/h/f;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/location/h/f;->dl()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/baidu/location/e/w;->c:Lcom/baidu/location/h/f;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/baidu/location/h/f;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/g;->cG()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "&sema=aptag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    new-instance v1, Lcom/baidu/location/e/w$a;

    invoke-direct {v1, p0}, Lcom/baidu/location/e/w$a;-><init>(Lcom/baidu/location/e/w;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/e/w$a;->a(Ljava/lang/String;)V

    return-void
.end method
