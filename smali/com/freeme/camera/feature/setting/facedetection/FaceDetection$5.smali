.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->onPreviewStatus(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1700(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->setDetectedFaceUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1900(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->onPreviewStatus(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->onPreviewStatus(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->setDetectedFaceUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V

    return-void
.end method
