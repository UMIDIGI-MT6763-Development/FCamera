.class public interface abstract Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract drainEncoder(Z)V
.end method

.method public abstract flush()V
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract initCodec(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z
.end method

.method public abstract release()V
.end method

.method public abstract requestKeyFrame()V
.end method

.method public abstract setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V
.end method
