.class public abstract Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoderInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final ERROR_CODDE_INVALID_FILE:I = -0x1

.field public static final ERROR_CODE_UNSUPPORTED_FORMAT:I = -0x2

.field protected static final TIMEOUT_USEC:I = 0x1f4


# instance fields
.field protected mAudioDecoder:Landroid/media/MediaCodec;

.field protected mAudioTrackIndex:I

.field protected mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

.field protected mMediaExtractor:Landroid/media/MediaExtractor;

.field protected mVideoDecoder:Landroid/media/MediaCodec;

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoTrackIndex:I

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mAudioTrackIndex:I

    iput-object p1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    return-void
.end method


# virtual methods
.method public createAudioDecoder()Landroid/media/MediaCodec;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getAudioTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->createMediaDecoder(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    return-object v0
.end method

.method public createMediaDecoder(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createMediaExtractor()Landroid/media/MediaExtractor;
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->destroyExtractor()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "Please set the data source"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->onDecoderError(I)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unable to read media file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v5}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->appContext()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mDataSource:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-virtual {v2}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->destroyExtractor()V

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->onDecoderError(I)V

    :goto_1
    return-object v0
.end method

.method public createVideoDecoder(Landroid/view/Surface;)Landroid/media/MediaCodec;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getVideoTrackFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mime"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->createMediaDecoder(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    const-string v0, "TuSDKMovieDecoder : Video decoding failed %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->onDecoderError(I)V

    return-object v1
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->stop()V

    return-void
.end method

.method protected destroyExtractor()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->unselectAudioTrack()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->unselectVideoTrack()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mAudioTrackIndex:I

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoTrackIndex:I

    return-void
.end method

.method public findAudioTrack()I
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mAudioTrackIndex:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mAudioTrackIndex:I

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mAudioTrackIndex:I

    return v0
.end method

.method public findVideoTrack()I
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoTrackIndex:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoTrackIndex:I

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoTrackIndex:I

    return v0
.end method

.method public getAudioTrackFormat()Landroid/media/MediaFormat;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->findAudioTrack()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getMediaExtractor()Landroid/media/MediaExtractor;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->createMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method public getVideoTrackFormat()Landroid/media/MediaFormat;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->findVideoTrack()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method protected onDecoderError(I)V
    .locals 3

    const-string v0, "%s : ErrorCode: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method public selectAudioTrack()I
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->unselectVideoTrack()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->findAudioTrack()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0
.end method

.method public selectVideoTrack()I
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->unselectAudioTrack()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->findVideoTrack()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getVideoDecoder()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getAudioDecoder()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->destroyExtractor()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getVideoDecoder()Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->getAudioDecoder()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mAudioDecoder:Landroid/media/MediaCodec;

    :cond_1
    return-void
.end method

.method public unselectAudioTrack()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->findAudioTrack()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-void
.end method

.method public unselectVideoTrack()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->findVideoTrack()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKMediaDecoder;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-void
.end method
