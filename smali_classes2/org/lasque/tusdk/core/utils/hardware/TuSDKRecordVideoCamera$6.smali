.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

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

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->isRecordingPaused()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->e(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;-><init>()V

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->f(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)I

    move-result p2

    iput p2, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->trackIndex:I

    iput-object p3, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->buffer:Ljava/nio/ByteBuffer;

    iput-object p4, p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->g(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    move-result-object p2

    const/4 p3, 0x6

    invoke-virtual {p2, p3, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->g(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onAudioEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->b(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->c(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMediaMuxer()Landroid/media/MediaMuxer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;I)I

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->d(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getMediaMuxer()Landroid/media/MediaMuxer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$6;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Z)Z

    :cond_1
    return-void
.end method
