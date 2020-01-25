.class Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;
.super Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder;
.source "HwJpegEncodeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwJpegEncodeImpl"


# instance fields
.field private mImageHandlerThread:Landroid/os/HandlerThread;

.field private mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

.field private mJpegCallback:Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;Lcom/freeme/camera/common/jpeg/encoder/Image;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->acquireJpegBytesAndClose(Lcom/freeme/camera/common/jpeg/encoder/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;)Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mJpegCallback:Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    return-object p0
.end method

.method private acquireJpegBytesAndClose(Lcom/freeme/camera/common/jpeg/encoder/Image;)[B
    .locals 4

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->getPlanes()[Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<acquireJpegBytesAndClose> start get buffer,size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/Image;->close()V

    return-object v1
.end method

.method private declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->close()V

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;
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


# virtual methods
.method public configInputSurface(Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;III)Landroid/view/Surface;
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configInputSurface] jpegCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mJpegCallback:Lcom/freeme/camera/common/jpeg/encoder/JpegEncoder$JpegCallback;

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getHeight()I

    move-result p1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getImageFormat()I

    move-result p1

    if-ne p1, p4, :cond_0

    sget-object p1, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->TAG:Ljava/lang/String;

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

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->close()V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_2

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ImageListener"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    invoke-static {p2, p3, p4, v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->newInstance(IIII)Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    iget-object p2, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    new-instance p3, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$ImageListener;-><init>(Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl$1;)V

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, p3, p4}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->setOnImageAvailableListener(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->mImageReader:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-virtual {p1}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "why looper is null ?"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSupportedInputFormats()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x1
        0x32315659
        0x3
    .end array-data
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/HwJpegEncodeImpl;->close()V

    return-void
.end method

.method public startEncode()V
    .locals 0

    return-void
.end method

.method public startEncodeAndReleaseWhenDown()V
    .locals 0

    return-void
.end method
