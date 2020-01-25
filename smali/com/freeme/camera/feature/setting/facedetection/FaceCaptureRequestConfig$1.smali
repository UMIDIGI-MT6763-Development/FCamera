.class Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FaceCaptureRequestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-static {p3, p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    invoke-static {v1, p1, p3, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;[Landroid/hardware/camera2/params/Face;[Landroid/graphics/Rect;Landroid/graphics/Rect;)[Lcom/freeme/camera/feature/setting/facedetection/Face;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;->onDetectedFaceUpdate([Lcom/freeme/camera/feature/setting/facedetection/Face;)V

    :cond_0
    return-void
.end method
