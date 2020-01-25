.class public interface abstract Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;
    }
.end annotation


# virtual methods
.method public abstract initEncoder(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)Z
.end method

.method public abstract onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onAudioEncoderStarted(Landroid/media/MediaFormat;)V
.end method

.method public abstract queueAudio([B)V
.end method

.method public abstract setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
