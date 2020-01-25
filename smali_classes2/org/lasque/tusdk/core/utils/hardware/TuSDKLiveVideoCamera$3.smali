.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/output/SelesOffscreen$SelesOffscreenDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;)Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/output/SelesOffscreen;->renderedBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v3, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v3, v2

    const/16 v2, 0x11

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x8

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v2, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->SW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    sget-object v3, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    invoke-static {v1, p1, v2, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;Ljava/nio/IntBuffer;[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)Ljava/lang/Boolean;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoDataEncoder()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;->queueVideo([B)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->getVideoCaptureSetting()Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->imageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v2, p1, v3, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera;Ljava/nio/IntBuffer;[BLorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;)Ljava/lang/Boolean;

    new-instance p1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3$1;-><init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKLiveVideoCamera$3;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return v0
.end method
