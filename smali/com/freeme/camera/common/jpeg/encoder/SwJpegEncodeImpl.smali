.class Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;
.super Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder;
.source "SwJpegEncodeImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseWhenEncodeDone:Z

.field private mImageHandlerThread:Landroid/os/HandlerThread;

.field private mImageReader:Landroid/media/ImageReader;

.field private mJpegCallback:Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CamAp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->acquireRgbBufferAndClose(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mJpegCallback:Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mCloseWhenEncodeDone:Z

    return p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mCloseWhenEncodeDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->close()V

    return-void
.end method

.method private acquireRgbBufferAndClose(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->getContinuousRgbDataFromImage(Landroid/media/Image;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getContinuousRgbDataFromImage(Landroid/media/Image;)[B
    .locals 7

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "getContinuousRGBADataFromImage begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    new-instance v3, Landroid/graphics/PixelFormat;

    invoke-direct {v3}, Landroid/graphics/PixelFormat;-><init>()V

    invoke-static {v0, v3}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    const/4 v0, 0x0

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result p1

    mul-int v6, v1, v2

    iget v3, v3, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x8

    new-array v3, v6, [B

    mul-int/2addr p1, v1

    sub-int/2addr v5, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v3, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v0, "getContinuousRGBADataFromImage end"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method


# virtual methods
.method public configInputSurface(Landroid/view/Surface;III)Landroid/view/Surface;
    .locals 0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Not implement!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public configInputSurface(Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;III)Landroid/view/Surface;
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mJpegCallback:Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result p1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result p1

    if-ne p1, p4, :cond_0

    sget-object p1, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reuse old image reader width = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_2

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ImageListener"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    invoke-static {p2, p3, p4, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    new-instance p3, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$ImageListener;-><init>(Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl$1;)V

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, p3, p4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "why looper is null ?"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSupportedInputFormats()[I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->close()V

    return-void
.end method

.method public startEncode()V
    .locals 0

    return-void
.end method

.method public startEncodeAndReleaseWhenDown()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "startEncodeAndReleaseWhenDown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/jpeg/encoder/SwJpegEncodeImpl;->mCloseWhenEncodeDone:Z

    return-void
.end method
