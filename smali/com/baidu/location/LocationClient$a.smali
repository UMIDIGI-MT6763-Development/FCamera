.class Lcom/baidu/location/LocationClient$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/LocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/LocationClient;


# direct methods
.method private constructor <init>(Lcom/baidu/location/LocationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient$a;-><init>(Lcom/baidu/location/LocationClient;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2bd

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->char(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object p1

    iget-boolean p1, p1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/LocationClient;->do(Lcom/baidu/location/LocationClient;Z)Z

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->char(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClientOption;

    move-result-object p1

    iget-boolean p1, p1, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1, v2}, Lcom/baidu/location/LocationClient;->do(Lcom/baidu/location/LocationClient;Z)Z

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    const/16 v1, 0x1a

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Landroid/os/Message;I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->e(Lcom/baidu/location/LocationClient;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->i(Lcom/baidu/location/LocationClient;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->for(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->do(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->try(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->int(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->new(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->byte(Lcom/baidu/location/LocationClient;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->byte(Lcom/baidu/location/LocationClient;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_d
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->else(Lcom/baidu/location/LocationClient;)V

    goto :goto_1

    :pswitch_e
    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1}, Lcom/baidu/location/LocationClient;->for(Lcom/baidu/location/LocationClient;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDLocation;

    invoke-static {v0, p1}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Lcom/baidu/location/BDLocation;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v3, Lcom/baidu/location/BDLocation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "locStr"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocation;

    iget-object v3, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v3}, Lcom/baidu/location/LocationClient;->goto(Lcom/baidu/location/LocationClient;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v3}, Lcom/baidu/location/LocationClient;->j(Lcom/baidu/location/LocationClient;)Z

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->goto(Lcom/baidu/location/LocationClient;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->j(Lcom/baidu/location/LocationClient;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object p1, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {p1, v2}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Z)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->goto(Lcom/baidu/location/LocationClient;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0, v2}, Lcom/baidu/location/LocationClient;->if(Lcom/baidu/location/LocationClient;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/LocationClient$a;->a:Lcom/baidu/location/LocationClient;

    goto/16 :goto_0

    :cond_5
    :goto_1
    :pswitch_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
