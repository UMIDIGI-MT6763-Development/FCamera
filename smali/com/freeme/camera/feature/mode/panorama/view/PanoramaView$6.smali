.class Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;
.super Ljava/lang/Object;
.source "PanoramaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->setSaveCancelButtonOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1400(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1500(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->val$orientation:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1400(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1600(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$6;->val$orientation:I

    invoke-static {v0, v1, v2, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    return-void
.end method
