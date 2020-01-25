.class Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/media/MediaCodec$BufferInfo;)Z
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->h(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J

    move-result-wide v1

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->d(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J

    :cond_0
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->f(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->a(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;J)J

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onAudioEncoderCodecConfig(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method public onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-virtual {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->isRecording()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a(Landroid/media/MediaCodec$BufferInfo;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAudioEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->canAddVideoTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->addAudioTrack(Landroid/media/MediaFormat;)I

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasVideoTrack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$4;->a:Lorg/lasque/tusdk/api/TuSDKMediaRecoder;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder;->b(Lorg/lasque/tusdk/api/TuSDKMediaRecoder;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->start()Z

    :cond_1
    return-void
.end method
