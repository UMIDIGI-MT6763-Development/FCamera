.class public interface abstract Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKMovieDataDecoderDelegate"
.end annotation


# virtual methods
.method public abstract onAudioDecoderInfoReady(Landroid/media/MediaFormat;)V
.end method

.method public abstract onAudioFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onDecoderComplete()V
.end method

.method public abstract onDecoderError(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDecoderError;)V
.end method

.method public abstract onProgressChanged(JFF)V
.end method

.method public abstract onVideoDecoderInfoReady(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V
.end method

.method public abstract onVideoDecoderNewFrameAvailable()V
.end method
