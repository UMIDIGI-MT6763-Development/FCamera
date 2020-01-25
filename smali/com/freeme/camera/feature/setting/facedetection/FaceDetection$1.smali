.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1$1;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
