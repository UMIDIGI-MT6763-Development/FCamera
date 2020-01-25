.class public Lcom/baidu/location/d/a$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/d/a;


# direct methods
.method public constructor <init>(Lcom/baidu/location/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/d/a$b;->a:Lcom/baidu/location/d/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/baidu/location/d/a$b;->a:Lcom/baidu/location/d/a;

    invoke-static {p1}, Lcom/baidu/location/d/a;->do(Lcom/baidu/location/d/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/d/a$b;->a:Lcom/baidu/location/d/a;

    invoke-static {p1}, Lcom/baidu/location/d/a;->do(Lcom/baidu/location/d/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/d/a$b;->a:Lcom/baidu/location/d/a;

    invoke-static {p1}, Lcom/baidu/location/d/a;->if(Lcom/baidu/location/d/a;)Lcom/baidu/location/LocationClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->requestNotifyLocation()V

    :cond_1
    :goto_0
    return-void
.end method
