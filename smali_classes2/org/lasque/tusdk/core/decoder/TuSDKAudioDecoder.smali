.class public Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;
.super Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;

# interfaces
.implements Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoderInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

.field private b:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/FileOutputStream;

.field private f:J

.field private g:I

.field private volatile h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    iput-object p2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getDecodeTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getDecodeTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->e:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->selectAudioTrack()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->onDecoderError(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->e:Ljava/io/FileOutputStream;

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;->onDecodeRawInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getDecodeTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->getStartTimeUS()F

    move-result v1

    float-to-long v1, v1

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->seekTo(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    if-eqz v1, :cond_5

    if-nez v2, :cond_4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->d()Z

    move-result v1

    move v2, v1

    :cond_4
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->e()Z

    move-result v1

    goto :goto_1

    :cond_5
    iget v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->g:I

    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->size:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->size:I

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->b()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;->onDecode([BLandroid/media/MediaCodec$BufferInfo;D)V

    :cond_6
    return-void
.end method

.method private d()Z
    .locals 11

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v1, 0x0

    if-ltz v5, :cond_1

    aget-object v0, v0, v5

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gez v7, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1
    return v1
.end method

.method private e()Z
    .locals 9

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v3

    :cond_0
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v4, :cond_1

    aget-object v1, v1, v2

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->g:I

    array-length v5, v4

    add-int/2addr v1, v5

    iput v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->g:I

    iget-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->f:J

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getFrameInterval()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->f:J

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getDurationTimes()J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-virtual {p0, v4, v5, v6}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->onDecode([BD)V

    invoke-virtual {p0, v4}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->writeRawDataToFile([B)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

    if-eqz v1, :cond_1

    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getDurationTimes()J

    move-result-wide v7

    div-long/2addr v5, v7

    long-to-double v5, v5

    invoke-interface {v1, v4, v0, v5, v6}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;->onDecode([BLandroid/media/MediaCodec$BufferInfo;D)V

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->f:J

    long-to-float v0, v4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getDecodeTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->durationTimeUS()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->unselectAudioTrack()V

    return v1

    :cond_3
    const/4 v0, -0x3

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    :cond_4
    return v3
.end method


# virtual methods
.method public getAudioDecoder()Landroid/media/MediaCodec;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->createAudioDecoder()Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getAudioTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public getAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getAudioTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->createWithMediaFormat(Landroid/media/MediaFormat;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->c:Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-object v0
.end method

.method public getDecodeTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->b:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public getDurationTimes()J
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->getAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    move-result-object v0

    iget-wide v0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->duration:J

    return-wide v0
.end method

.method public getVideoDecoder()Landroid/media/MediaCodec;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDecode([BD)V
    .locals 0

    return-void
.end method

.method protected onDecoderError(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->onDecoderError(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;->onDecoderErrorCode(I)V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method public setDecodeTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->b:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->a:Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder$OnAudioDecoderDelegate;

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->start()V

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->h:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method protected writeRawDataToFile([B)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioDecoder;->e:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
