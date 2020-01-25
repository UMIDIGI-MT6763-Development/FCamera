.class Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FlashRequestConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure$1;->this$0:Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;->access$000(Lcom/freeme/camera/feature/setting/flash/FlashRequestConfigure;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method
