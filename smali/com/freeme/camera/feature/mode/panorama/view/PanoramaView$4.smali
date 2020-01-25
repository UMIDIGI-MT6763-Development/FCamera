.class Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;
.super Ljava/lang/Object;
.source "PanoramaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->initializeViewManager()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel button clicked, mIsCapturing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$800(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$900(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1100(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$800(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$4;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1100(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;->onCancelButtonClicked()V

    :cond_0
    return-void
.end method
