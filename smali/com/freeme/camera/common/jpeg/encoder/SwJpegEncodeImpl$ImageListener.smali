.class Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;
.super Ljava/lang/Object;
.source "SwJpegEncodeImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;-><init>(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAvailable thread name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-static {v1, p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$200(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5f

    invoke-virtual {v2, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$300(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$300(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;->onJpegAvailable([B)V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$400(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-static {p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$500(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)V

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;->this$0:Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->access$402(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;Z)Z

    :cond_1
    return-void
.end method
