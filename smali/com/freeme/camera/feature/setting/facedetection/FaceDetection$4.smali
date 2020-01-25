.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacePreviewSizeUpdate()Lcom/freeme/camera/common/utils/Size;
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object v0
.end method

.method public onFaceSettingValueUpdate(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getEntryValues()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1700(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->setDetectedFaceUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;)V

    return-void
.end method

.method public onUpdateImageOrientation()I
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1300(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1400(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1500(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1600()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onUpdateImageOrientation] camera id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rotation = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method
