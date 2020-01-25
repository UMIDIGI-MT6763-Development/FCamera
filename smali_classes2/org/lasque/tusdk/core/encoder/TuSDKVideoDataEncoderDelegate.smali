.class public interface abstract Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onVideoEncoderStarted(Landroid/media/MediaFormat;)V
.end method
