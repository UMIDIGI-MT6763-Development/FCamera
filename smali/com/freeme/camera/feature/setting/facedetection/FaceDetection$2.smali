.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;Lcom/freeme/camera/common/utils/Size;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
