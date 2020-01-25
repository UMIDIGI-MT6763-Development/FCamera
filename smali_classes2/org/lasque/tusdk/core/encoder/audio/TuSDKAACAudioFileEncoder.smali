.class public Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;
.super Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;-><init>()V

    return-void
.end method

.method private a([BI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x7

    aput-byte v1, p1, v0

    const/16 v0, 0x50

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0xb

    const/16 v1, 0x80

    add-int/2addr v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    and-int/lit16 v0, p2, 0x7ff

    shr-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    and-int/lit8 p2, p2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;

    return-object v0
.end method

.method public bridge synthetic getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected getMovieWirter()Ljava/io/FileOutputStream;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getOutputFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->b:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public getOutputFilePath()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAblumPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "lsq_%s.aac"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public initEncoder(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->enableBuffers:Z

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->initEncoder(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)Z

    move-result p1

    return p1
.end method

.method public final onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->onAudioEncoderFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget p1, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p1, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p2, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget p1, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 p2, p1, 0x7

    iget v0, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p4, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr p4, p1

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-array p4, p2, [B

    invoke-direct {p0, p4, p2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->a([BI)V

    const/4 p2, 0x7

    invoke-virtual {p3, p4, p2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getMovieWirter()Ljava/io/FileOutputStream;

    move-result-object p1

    const/4 p2, 0x0

    array-length p3, p4

    invoke-virtual {p1, p4, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onAudioEncoderStarted(Landroid/media/MediaFormat;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->onAudioEncoderStarted(Landroid/media/MediaFormat;)V

    return-void
.end method

.method protected onStopeed()V
    .locals 2

    const-string v0, "onStopeed===="

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->onStopeed()V

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getMovieWirter()Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getMovieWirter()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;->onAACAudioFileEncoderComplete(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder$TuSDKAACAudioFileEncoderDelegate;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoder;->setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V

    return-void
.end method

.method public setOutputFilePath(Ljava/lang/String;)Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAACAudioFileEncoder;->a:Ljava/lang/String;

    return-object p0
.end method
