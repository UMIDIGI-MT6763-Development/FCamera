.class Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;
.super Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/Image$Plane;-><init>()V

    iput p2, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    iput p3, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    iput-object p4, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private clearBuffer()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    iget-object v0, v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$800(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPixelStride is not supported for RAW_PRIVATE plane"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowStride()I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->this$1:Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;

    iget-object v0, v0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage;->this$0:Lcom/freeme/camera/common/jpeg/encoder/ImageReader;

    invoke-static {v0}, Lcom/freeme/camera/common/jpeg/encoder/ImageReader;->access$800(Lcom/freeme/camera/common/jpeg/encoder/ImageReader;)I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/freeme/camera/common/jpeg/encoder/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRowStride is not supported for RAW_PRIVATE plane"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
