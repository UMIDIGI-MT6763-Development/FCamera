.class Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "DngCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$500(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->isStillCaptureTemplate(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "onCaptureCompleted"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$602(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$702(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngCreatorStateUpdate(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$2;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/media/Image;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$400(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/Image;)V

    :cond_0
    return-void
.end method
