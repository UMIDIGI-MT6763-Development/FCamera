.class Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;
.super Ljava/lang/Object;
.source "Camera2Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

.field final synthetic val$session:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;->this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;->this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$200(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;->this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

    iget-object v1, v1, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$100(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$1;->val$session:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;->onConfigured(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V

    return-void
.end method
