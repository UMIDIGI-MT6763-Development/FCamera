.class public Lcom/baidu/location/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/g/b$b;,
        Lcom/baidu/location/g/b$a;
    }
.end annotation


# static fields
.field private static jn:Ljava/text/SimpleDateFormat;


# instance fields
.field jj:J

.field jk:Lcom/baidu/location/h/h;

.field private jl:Lcom/baidu/location/b/l;

.field jm:Lcom/baidu/location/h/f;

.field jo:Z

.field jp:Lcom/baidu/location/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/g/b;->jn:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/g/b;->jk:Lcom/baidu/location/h/h;

    iput-object v0, p0, Lcom/baidu/location/g/b;->jm:Lcom/baidu/location/h/f;

    iput-object v0, p0, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g/b;->jo:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/g/b;->jj:J

    new-instance v0, Lcom/baidu/location/b/l;

    invoke-direct {v0}, Lcom/baidu/location/b/l;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/g/b;->jl:Lcom/baidu/location/b/l;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/g/b;->jk:Lcom/baidu/location/h/h;

    iput-object v0, p0, Lcom/baidu/location/g/b;->jm:Lcom/baidu/location/h/f;

    iput-object v0, p0, Lcom/baidu/location/g/b;->jp:Lcom/baidu/location/g/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/g/b;->jo:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/g/b;->jj:J

    new-instance v0, Lcom/baidu/location/b/l;

    invoke-direct {v0}, Lcom/baidu/location/b/l;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/g/b;->jl:Lcom/baidu/location/b/l;

    iput-object p1, p0, Lcom/baidu/location/g/b;->jk:Lcom/baidu/location/h/h;

    iput-object p2, p0, Lcom/baidu/location/g/b;->jm:Lcom/baidu/location/h/f;

    iput-boolean p3, p0, Lcom/baidu/location/g/b;->jo:Z

    iget-object p1, p0, Lcom/baidu/location/g/b;->jl:Lcom/baidu/location/b/l;

    invoke-virtual {p1}, Lcom/baidu/location/b/l;->aj()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/baidu/location/g/b;->jl:Lcom/baidu/location/b/l;

    invoke-virtual {p3, p1, p2}, Lcom/baidu/location/b/l;->do(J)V

    iget-object p3, p0, Lcom/baidu/location/g/b;->jl:Lcom/baidu/location/b/l;

    invoke-virtual {p3, p1, p2}, Lcom/baidu/location/b/l;->if(J)V

    return-void
.end method

.method static synthetic cy()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/baidu/location/g/b;->jn:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/g/b;->jl:Lcom/baidu/location/b/l;

    return-object p0
.end method


# virtual methods
.method public cz()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/baidu/location/g/b;->jm:Lcom/baidu/location/h/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/location/h/f;->dl()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g/b;->jm:Lcom/baidu/location/h/f;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/baidu/location/h/f;->i(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/baidu/location/g/b;->jk:Lcom/baidu/location/h/h;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/baidu/location/h/h;->ds()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/baidu/location/g/b;->jk:Lcom/baidu/location/h/h;

    invoke-virtual {v2}, Lcom/baidu/location/h/h;->dw()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<LocationRQ xmlns=\"http://skyhookwireless.com/wps/2005\"\nversion=\"2.24\"\nstreet-address-lookup=\"full\">\n<authentication version=\"2.2\">\n<key key=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/Jni;->dG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "username=\"BAIDULOC\"/></authentication>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "</LocationRQ>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/baidu/location/g/b$b;

    invoke-direct {v1, p0}, Lcom/baidu/location/g/b$b;-><init>(Lcom/baidu/location/g/b;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/g/b$b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/g/b;->jj:J

    :cond_5
    return-void
.end method
