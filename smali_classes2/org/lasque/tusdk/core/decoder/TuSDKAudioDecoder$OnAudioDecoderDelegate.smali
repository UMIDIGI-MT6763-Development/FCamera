.class public interface abstract Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioDecoderDelegate"
.end annotation


# virtual methods
.method public abstract onDecode([BLandroid/media/MediaCodec$BufferInfo;D)V
.end method

.method public abstract onDecodeRawInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
.end method

.method public abstract onDecoderErrorCode(I)V
.end method
