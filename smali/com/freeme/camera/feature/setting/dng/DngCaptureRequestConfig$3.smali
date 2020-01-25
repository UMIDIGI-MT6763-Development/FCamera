.class Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;
.super Ljava/lang/Object;
.source "DngCaptureRequestConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->releaseRawSurface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$800(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$900(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$1000(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$900(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$1002(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$3;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {v1, v2}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$902(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    const-string v2, "[releaseRawSurface] called"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
