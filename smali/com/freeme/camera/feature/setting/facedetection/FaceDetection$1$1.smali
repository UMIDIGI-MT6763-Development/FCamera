.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    :cond_0
    return-void
.end method
