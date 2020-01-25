.class public interface abstract Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;,
        Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;
    }
.end annotation


# virtual methods
.method public abstract addAudioTrack(Landroid/media/MediaFormat;)I
.end method

.method public abstract addVideoTrack(Landroid/media/MediaFormat;)I
.end method

.method public abstract getDurationTime()J
.end method

.method public abstract setOrientationHint(I)V
.end method

.method public abstract start()Z
.end method

.method public abstract stop()Z
.end method

.method public abstract writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract writeSampleData(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V
.end method

.method public abstract writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
