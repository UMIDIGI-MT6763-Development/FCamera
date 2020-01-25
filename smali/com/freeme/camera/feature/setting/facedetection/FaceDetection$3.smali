.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectedFaceUpdate([Lcom/freeme/camera/feature/setting/facedetection/Face;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$500(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$600(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$700(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$900(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v2

    const v3, 0x7f09015d

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v0}, Lcom/freeme/camera/feature/mode/portrait/PortraitVirtualView;->setFaces([Lcom/freeme/camera/feature/setting/facedetection/Face;I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->onDetectedFaceUpdate([Lcom/freeme/camera/feature/setting/facedetection/Face;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length p1, p1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1000(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v3

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1100(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v3

    if-ne v3, v1, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1200(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v1

    const-string v2, "key_face_exist"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1200(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "key_face_exist"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$1002(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;Z)Z

    :cond_4
    return-void
.end method
