.class Lcom/baidu/lbsapi/auth/j;
.super Ljava/lang/Object;
.source "LBSAuthManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

.field private final synthetic b:I

.field private final synthetic c:Z

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/baidu/lbsapi/auth/LBSAuthManager;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iput p2, p0, Lcom/baidu/lbsapi/auth/j;->b:I

    iput-boolean p3, p0, Lcom/baidu/lbsapi/auth/j;->c:Z

    iput-object p4, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/lbsapi/auth/j;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/lbsapi/auth/j;->f:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/lbsapi/auth/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; forced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/j;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "checkAK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$1(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/baidu/lbsapi/auth/j;->b:I

    const/16 v1, 0x259

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/j;->c:Z

    if-nez v1, :cond_5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$1(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x25a

    iget v1, p0, Lcom/baidu/lbsapi/auth/j;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "authenticate wait  "

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$5()Lcom/baidu/lbsapi/auth/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/m;->b()V

    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$6(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "authenticate else  "

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$6(Lcom/baidu/lbsapi/auth/LBSAuthManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "authenticate sendAuthRequest"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$2()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/b;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "authStrings.length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_7
    if-eqz v5, :cond_9

    array-length v0, v5

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    sget-boolean v0, Lcom/baidu/lbsapi/auth/a;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "more sha1 auth"

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/a;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-boolean v2, p0, Lcom/baidu/lbsapi/auth/j;->c:Z

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/j;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/j;->f:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$3(Lcom/baidu/lbsapi/auth/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/baidu/lbsapi/auth/j;->a:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    iget-boolean v1, p0, Lcom/baidu/lbsapi/auth/j;->c:Z

    iget-object v2, p0, Lcom/baidu/lbsapi/auth/j;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/lbsapi/auth/j;->f:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/baidu/lbsapi/auth/j;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->access$4(Lcom/baidu/lbsapi/auth/LBSAuthManager;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
