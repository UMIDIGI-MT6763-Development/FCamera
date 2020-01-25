.class Lorg/lasque/tusdk/core/network/TuSdkHttpEngine$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->overseeNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine$1;->a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine$1;->a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/HardwareHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->onNetworkStateChanged(Z)V

    return-void
.end method
