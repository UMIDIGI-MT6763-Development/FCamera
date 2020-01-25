.class Lcom/baidu/location/c/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/c/q$a;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/q$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/r;->a:Lcom/baidu/location/c/q$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/baidu/location/c/r;->a:Lcom/baidu/location/c/q$a;

    invoke-static {v0}, Lcom/baidu/location/c/q$a;->c(Lcom/baidu/location/c/q$a;)Lcom/baidu/location/c/q;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/r;->a:Lcom/baidu/location/c/q$a;

    invoke-static {v1}, Lcom/baidu/location/c/q$a;->b(Lcom/baidu/location/c/q$a;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/location/c/q;->a(Lcom/baidu/location/c/q;Z)V

    return-void
.end method
