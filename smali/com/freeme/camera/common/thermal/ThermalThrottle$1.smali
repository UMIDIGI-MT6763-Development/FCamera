.class Lcom/freeme/camera/common/thermal/ThermalThrottle$1;
.super Ljava/lang/Object;
.source "ThermalThrottle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/thermal/ThermalThrottle;->updateCountDownTime(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/thermal/ThermalThrottle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;->this$0:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    iput-object p2, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/thermal/ThermalThrottle$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[updateCountDownTime] don\'t need finish activity"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
