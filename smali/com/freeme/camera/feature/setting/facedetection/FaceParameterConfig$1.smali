.class Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;
.super Ljava/lang/Object;
.source "FaceParameterConfig.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;[Landroid/hardware/Camera$Face;)[Lcom/freeme/camera/feature/setting/facedetection/Face;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;->onDetectedFaceUpdate([Lcom/freeme/camera/feature/setting/facedetection/Face;)V

    :cond_0
    return-void
.end method
