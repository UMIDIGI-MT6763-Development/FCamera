.class Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoDequeueOutputBufferThread"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->b:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    packed-switch v1, :pswitch_data_0

    if-ltz v1, :cond_2

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v2, v2, v1

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v3, v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2, v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->onVideoEncoderStarted(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v3, v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->a(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;Landroid/media/MediaCodec$BufferInfo;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2, v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder$VideoDequeueOutputBufferThread;->a:Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;->b(Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
