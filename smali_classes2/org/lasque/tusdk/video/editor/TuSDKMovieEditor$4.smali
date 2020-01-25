.class Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->canAddVideoTrack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-static {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->c(Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->existAudioTrack:Z

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onVideoEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method public onVideoEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasVideoTrack()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeVideoSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->canAddVideoTrack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->addVideoTrack(Landroid/media/MediaFormat;)I

    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$4;->a:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->start()Z

    :cond_2
    :goto_0
    return-void
.end method
