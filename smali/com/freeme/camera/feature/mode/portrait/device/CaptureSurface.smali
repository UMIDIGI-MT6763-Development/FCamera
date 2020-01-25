.class public Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;
.super Ljava/lang/Object;
.source "CaptureSurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$ImageCallback;
    }
.end annotation


# static fields
.field private static final FORMAT_HEIF:Ljava/lang/String; = "heif"

.field private static final FORMAT_JPEG:Ljava/lang/String; = "jpeg"

.field private static final FORMAT_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mCaptureHandler:Landroid/os/Handler;

.field private final mCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mCaptureImageReader:Landroid/media/ImageReader;

.field private mFormat:I

.field private mFormatTag:Ljava/lang/String;

.field private mImageCallback:Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$ImageCallback;

.field private final mImageReaderSync:Ljava/lang/Object;

.field private mMaxImages:I

.field private mPictureHeight:I

.field private mPictureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormat:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mMaxImages:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageReaderSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/String;

    const-string v1, "jpeg"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$1;-><init>(Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[CaptureSurface]Construct"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;)Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$ImageCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageCallback:Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$ImageCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;Landroid/media/Image;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->getBuffer(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    return-object p0
.end method

.method private getBuffer(Landroid/media/Image;)[B
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageReaderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBuffer] image.getFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " image.getWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " image.getHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " formatTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "heif"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/HeifHelper;->getYUVBuffer(Landroid/media/Image;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "jpeg"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "thumbnail"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/freeme/camera/common/mode/photo/ThumbnailHelper;->getYUVBuffer(Landroid/media/Image;)[B

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    monitor-exit v0

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported image format."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageReaderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public releaseCaptureSurface()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[releaseCaptureSurface], mCaptureImageReader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageReaderSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCaptureCallback(Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$ImageCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageCallback:Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface$ImageCallback;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setFormat], null pointer! mFormatTag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    sget-object p1, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setFormat], mFormatTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormatTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updatePictureInfo(I)Z
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureHeight:I

    iget v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mMaxImages:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->updatePictureInfo(IIII)Z

    move-result p1

    return p1
.end method

.method public updatePictureInfo(IIII)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePictureInfo] width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCaptureImageReader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureHeight:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormat:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mMaxImages:I

    if-ne p4, v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updatePictureInfo],the info : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",format = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",maxImage = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is same as before"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureWidth:I

    iput p2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureHeight:I

    iput p3, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormat:I

    iput p4, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mMaxImages:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mImageReaderSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureWidth:I

    iget p3, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mPictureHeight:I

    iget p4, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mFormat:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mMaxImages:I

    invoke-static {p2, p3, p4, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageReader:Landroid/media/ImageReader;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/portrait/device/CaptureSurface;->mCaptureHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
