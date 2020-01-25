.class Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$1;
.super Ljava/lang/Object;
.source "CaptureSurface.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$1;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onImageAvailable]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$1;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;->access$100(Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;)Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$ImageCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$1;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;->access$100(Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;)Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$ImageCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$1;->this$0:Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;->access$200(Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface;Landroid/media/Image;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/video/device/v2/CaptureSurface$ImageCallback;->onPictureCallback([B)V

    :cond_0
    return-void
.end method
