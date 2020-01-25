.class Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$3;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$OnCancelButtonClickedListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$3;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$3;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$3;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$600(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    return-void
.end method
