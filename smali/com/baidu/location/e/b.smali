.class public abstract Lcom/baidu/location/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/b$a;,
        Lcom/baidu/location/e/b$b;
    }
.end annotation


# static fields
.field public static fN:Ljava/lang/String;


# instance fields
.field private fM:Z

.field private fO:Z

.field final fP:Landroid/os/Handler;

.field public fQ:Lcom/baidu/location/h/h;

.field public fR:Lcom/baidu/location/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/b;->fR:Lcom/baidu/location/h/f;

    iput-object v0, p0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/e/b;->fO:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/b;->fM:Z

    new-instance v0, Lcom/baidu/location/e/b$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/b$b;-><init>(Lcom/baidu/location/e/b;)V

    iput-object v0, p0, Lcom/baidu/location/e/b;->fP:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract a4()V
.end method

.method public abstract if(Landroid/os/Message;)V
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->du()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/j;->cM()Lcom/baidu/location/h/h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/e/b;->fR:Lcom/baidu/location/h/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/location/h/f;->dq()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/k;->dc()Lcom/baidu/location/h/f;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/b;->fR:Lcom/baidu/location/h/f;

    :cond_3
    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cH()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/location/h/d;->a()Lcom/baidu/location/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/g;->cB()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/baidu/location/h/h;->dv()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/baidu/location/e/b;->fR:Lcom/baidu/location/h/f;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/baidu/location/h/f;->dl()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    if-nez v0, :cond_7

    return-object v1

    :cond_7
    invoke-static {}, Lcom/baidu/location/e/c;->bp()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/c;->bs()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/k;->c9()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    const-string v2, "&cn=32"

    goto :goto_1

    :cond_8
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "&cn=%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/location/h/j;->cP()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v5, p0, Lcom/baidu/location/e/b;->fO:Z

    if-eqz v5, :cond_a

    iput-boolean v3, p0, Lcom/baidu/location/e/b;->fO:Z

    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/b/o;->aU()Lcom/baidu/location/b/l;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/location/b/l;->for(Z)V

    invoke-static {}, Lcom/baidu/location/h/l;->a()Lcom/baidu/location/h/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/h/k;->c5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%s&mac=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v3

    aput-object v5, v8, v4

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_2

    :cond_a
    iget-boolean v5, p0, Lcom/baidu/location/e/b;->fM:Z

    if-nez v5, :cond_c

    invoke-static {}, Lcom/baidu/location/e/o;->ci()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_b
    iput-boolean v4, p0, Lcom/baidu/location/e/b;->fM:Z

    :cond_c
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    iget-object p1, p0, Lcom/baidu/location/e/b;->fQ:Lcom/baidu/location/h/h;

    iget-object v2, p0, Lcom/baidu/location/e/b;->fR:Lcom/baidu/location/h/f;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/baidu/location/b/k;->if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
