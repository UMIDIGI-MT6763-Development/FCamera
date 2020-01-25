.class Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;
.super Landroid/os/Handler;
.source "ThermalThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/thermal/ThermalThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$300(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$100(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$100(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$400(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I

    move-result p1

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$500(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Lcom/freeme/camera/common/thermal/WarningDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/thermal/WarningDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$600(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMessage]WorkerHandler, mCountDown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {v4}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$700(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$700(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I

    move-result p1

    const/16 v3, 0x1e

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$500(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Lcom/freeme/camera/common/thermal/WarningDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/thermal/WarningDialog;->show()V

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    iget-object p1, p1, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    iget-object p1, p1, Lcom/freeme/camera/common/thermal/ThermalThrottle;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$400(Lcom/freeme/camera/common/thermal/ThermalThrottle;)I

    move-result p1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$800(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-static {p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$800(Lcom/freeme/camera/common/thermal/ThermalThrottle;)Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v3, v0, v1}, Lcom/freeme/camera/common/thermal/ThermalThrottle$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
