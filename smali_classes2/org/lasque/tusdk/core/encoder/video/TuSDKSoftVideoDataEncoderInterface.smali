.class public interface abstract Lorg/lasque/tusdk/core/encoder/video/TuSDKSoftVideoDataEncoderInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoDataEncoderInterface;


# virtual methods
.method public abstract initEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z
.end method

.method public abstract onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onVideoEncoderStarted(Landroid/media/MediaFormat;)V
.end method

.method public abstract queueVideo([B)V
.end method

.method public abstract start()Z
.end method

.method public abstract stop()V
.end method
