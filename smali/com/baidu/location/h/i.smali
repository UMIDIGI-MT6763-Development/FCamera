.class Lcom/baidu/location/h/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/location/h/a;


# direct methods
.method constructor <init>(Lcom/baidu/location/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/i;->a:Lcom/baidu/location/h/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/h/i;->a:Lcom/baidu/location/h/a;

    const-string v1, "&og=2"

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/h/i;->a:Lcom/baidu/location/h/a;

    const-string v1, "&og=1"

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/h/i;->a:Lcom/baidu/location/h/a;

    invoke-static {v0}, Lcom/baidu/location/h/a;->do(Lcom/baidu/location/h/a;)Lcom/baidu/location/h/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/i;->a:Lcom/baidu/location/h/a;

    invoke-static {v0}, Lcom/baidu/location/h/a;->do(Lcom/baidu/location/h/a;)Lcom/baidu/location/h/a$a;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/baidu/location/h/a$a;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/baidu/location/h/i;->a:Lcom/baidu/location/h/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/baidu/location/h/a;->if(Lcom/baidu/location/h/a;Landroid/location/Location;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
