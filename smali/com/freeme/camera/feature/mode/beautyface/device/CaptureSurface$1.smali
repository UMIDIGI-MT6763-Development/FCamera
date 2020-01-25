.class Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$1;
.super Ljava/lang/Object;
.source "CaptureSurface.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 7

    invoke-static {}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onImageAvailable]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;->access$100(Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;)Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$ImageCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[onImageAvailable] image buffer is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;->access$100(Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;)Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$ImageCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;->access$200(Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;Landroid/media/Image;)[B

    move-result-object v2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;->access$300(Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface;)Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v1 .. v6}, Lcom/freeme/camera/feature/mode/beautyface/device/CaptureSurface$ImageCallback;->onPictureCallback([BILjava/lang/String;II)V

    :cond_1
    return-void
.end method
