.class public interface abstract Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoderInterface;
.super Ljava/lang/Object;


# static fields
.field public static final INVALIDATE_TRACK_FLAG:I = -0x1


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract findAudioTrack()I
.end method

.method public abstract findVideoTrack()I
.end method

.method public abstract getAudioDecoder()Landroid/media/MediaCodec;
.end method

.method public abstract getAudioTrackFormat()Landroid/media/MediaFormat;
.end method

.method public abstract getMediaExtractor()Landroid/media/MediaExtractor;
.end method

.method public abstract getVideoDecoder()Landroid/media/MediaCodec;
.end method

.method public abstract getVideoTrackFormat()Landroid/media/MediaFormat;
.end method

.method public abstract selectAudioTrack()I
.end method

.method public abstract selectVideoTrack()I
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract unselectAudioTrack()V
.end method

.method public abstract unselectVideoTrack()V
.end method
