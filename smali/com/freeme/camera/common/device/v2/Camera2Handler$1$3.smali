.class Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;
.super Ljava/lang/Object;
.source "Camera2Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

.field final synthetic val$proxy:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/device/v2/Camera2Handler$1;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;->this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;->val$proxy:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;->this$1:Lcom/freeme/camera/common/device/v2/Camera2Handler$1;

    iget-object v0, v0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1;->this$0:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-static {v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->access$200(Lcom/freeme/camera/common/device/v2/Camera2Handler;)Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Handler$1$3;->val$proxy:Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;->onReady(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V

    return-void
.end method
