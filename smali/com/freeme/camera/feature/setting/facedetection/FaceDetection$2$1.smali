.class Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;->onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;

.field final synthetic val$newPreviewArea:Landroid/graphics/RectF;

.field final synthetic val$previewSize:Lcom/freeme/camera/common/utils/Size;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;Lcom/freeme/camera/common/utils/Size;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->val$previewSize:Lcom/freeme/camera/common/utils/Size;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->val$newPreviewArea:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->val$previewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$302(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;Lcom/freeme/camera/common/utils/Size;)Lcom/freeme/camera/common/utils/Size;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->this$1:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->access$400(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2$1;->val$newPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->onPreviewAreaChanged(Landroid/graphics/RectF;)V

    return-void
.end method
