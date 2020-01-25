.class Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnSaveButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveButtonClicked()V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onSaveButtonClicked]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$800(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->showGuideView(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->mIPanoramaDeviceController:Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;->reqStitchCapture()V

    return-void
.end method
