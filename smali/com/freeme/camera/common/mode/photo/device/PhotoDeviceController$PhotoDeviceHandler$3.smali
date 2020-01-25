.class Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$3;
.super Ljava/lang/Object;
.source "PhotoDeviceController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$3;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler$3;->this$1:Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;->access$1500(Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController$PhotoDeviceHandler;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/freeme/camera/common/mode/photo/device/PhotoDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mShutterCallback], spend time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
