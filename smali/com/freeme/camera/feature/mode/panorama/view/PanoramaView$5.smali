.class Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$5;
.super Ljava/lang/Object;
.source "PanoramaView.java"

# interfaces
.implements Lcom/freeme/camera/common/widget/RotateLayout$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSizeChanged]width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1202(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->access$1302(Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;I)I

    return-void
.end method
