.class Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;
.super Ljava/lang/Object;
.source "HwJpegEncodeImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;-><init>(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onImageAvailable] reader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->acquireNextImage()Lcom/freeme/camera/common/jpeg/encoder/Image;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->access$200(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;Lcom/freeme/camera/common/jpeg/encoder/Image;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;

    invoke-static {v0}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->access$300(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;)Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;->onJpegAvailable([B)V

    invoke-static {}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[onImageAvailable] end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
