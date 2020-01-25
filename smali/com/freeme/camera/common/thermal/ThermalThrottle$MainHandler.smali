.class Lcom/freeme/camera/common/thermal/ThermalThrottle$MainHandler;
.super Landroid/os/Handler;
.source "ThermalThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/thermal/ThermalThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$MainHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$MainHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$100(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$200(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
