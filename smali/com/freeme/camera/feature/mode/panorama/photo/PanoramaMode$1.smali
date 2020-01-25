.class Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoving([I)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[PanoramaMovingCallback onMoving]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    const/16 v4, 0x3ed

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x2

    aget v2, p1, v0

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;Z)V

    goto :goto_0

    :cond_0
    aget v2, p1, v0

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v0}, Lcom/freeme/camera/feature/mode/panorama/view/PanoramaView;->update(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$600(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    aget p1, p1, v0

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$700(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    :goto_0
    return-void
.end method
