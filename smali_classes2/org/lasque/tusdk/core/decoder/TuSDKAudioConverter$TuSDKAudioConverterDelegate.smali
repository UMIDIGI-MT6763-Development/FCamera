.class public interface abstract Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter$TuSDKAudioConverterDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKAudioConverterDelegate"
.end annotation


# virtual methods
.method public abstract onDone(Lorg/lasque/tusdk/core/decoder/TuSDKAudioConverter;)V
.end method

.method public abstract onNewSampleData(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onProgressChanged(J)Z
.end method

.method public abstract onReady(Landroid/media/MediaFormat;)V
.end method
