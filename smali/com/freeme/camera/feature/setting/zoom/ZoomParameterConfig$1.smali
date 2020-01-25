.class Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;
.super Ljava/lang/Object;
.source "ZoomParameterConfig.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onZoomChange] zoomValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", stopped = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->access$100(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->access$202(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;Z)Z

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->access$300(Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;)Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->stopSmoothZoom()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
