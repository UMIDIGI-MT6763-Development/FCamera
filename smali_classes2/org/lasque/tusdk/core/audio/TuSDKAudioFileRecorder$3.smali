.class Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method public onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-static {p1, p3, p4}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onAudioEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->canAddAudioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->addAudioTrack(Landroid/media/MediaFormat;)I

    iget-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->start()Z

    :cond_1
    :goto_0
    return-void
.end method
