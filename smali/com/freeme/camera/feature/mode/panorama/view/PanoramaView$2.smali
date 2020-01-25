.class Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;
.super Ljava/lang/Object;
.source "PanoramaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->hideGuideView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$100(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$200(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$100(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/common/widget/RotateLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
