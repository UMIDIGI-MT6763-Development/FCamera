.class Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->takePreviewPicture()V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$3102(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$6;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$1200(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)I

    move-result v2

    const/16 v3, 0x3ef

    invoke-virtual {v0, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
