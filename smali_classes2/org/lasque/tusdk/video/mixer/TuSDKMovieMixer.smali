.class public abstract Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixerInterface;


# instance fields
.field private a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAudioTrack(Landroid/media/MediaFormat;)I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->addAudioTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method public addVideoTrack(Landroid/media/MediaFormat;)I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->addVideoTrack(Landroid/media/MediaFormat;)I

    move-result p1

    return p1
.end method

.method public getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getOutputFilePah()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getOutputFormat()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;-><init>(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)V

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-object v0
.end method

.method public abstract getOutputFilePah()Ljava/lang/String;
.end method

.method protected abstract getOutputFormat()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
.end method

.method public setMediaWriter(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;)Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-object p0
.end method

.method protected startMovieWriter()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->start()Z

    return-void
.end method

.method protected stopMovieWriter()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->stop()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-void
.end method

.method public writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public writeSampleData(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeSampleData(Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$ByteBufferData;)V

    return-void
.end method

.method public writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMovieMixer;->getMediaWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method
