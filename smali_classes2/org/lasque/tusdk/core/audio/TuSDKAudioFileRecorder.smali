.class public Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;
.super Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;,
        Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;,
        Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;,
        Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

.field private b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

.field private c:Ljava/io/File;

.field private d:Ljava/io/FileOutputStream;

.field private e:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

.field private f:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

.field private g:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->defaultCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->defaultEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;)V

    sget-object p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->AAC:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    new-instance p1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$3;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->g:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getAudioEncoder()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->g:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;

    invoke-interface {p1, p2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioDataEncoderInterface$TuSDKAudioDataEncoderDelegate;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;)Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->d:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->d:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->hasAudioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->writeAudioSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private a([B)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->d:Ljava/io/FileOutputStream;

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

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->d:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->d:Ljava/io/FileOutputStream;

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->e:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->getOutputFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->create(Ljava/lang/String;Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->e:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    :cond_1
    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->e:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;->stop()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->e:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-void
.end method


# virtual methods
.method protected getMovieWriter()Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->e:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriter;

    return-object v0
.end method

.method public getOutputFile()Ljava/io/File;
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v3, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->PCM:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAblumPath()Ljava/io/File;

    move-result-object v3

    const-string v4, "lsq_%s.pcm"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v3, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->AAC:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAblumPath()Ljava/io/File;

    move-result-object v3

    const-string v4, "lsq_%s.aac"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    return-object v0
.end method

.method protected initWriter()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->PCM:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->AAC:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c()V

    :cond_1
    return-void
.end method

.method protected notifyRecordingError(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$1;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected notifyRecordingState(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$2;-><init>(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onRawAudioFrameDataAvailable([B)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->onRawAudioFrameDataAvailable([B)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->PCM:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a([B)V

    :cond_1
    return-void
.end method

.method public setAudioRecordDelegate(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    return-void
.end method

.method public setOutputFormat(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    return-void
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->initWriter()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->startRecording()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;->InitializationFailed:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->notifyRecordingError(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordError;)V

    return-void

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->notifyRecordingState(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V

    const-string v0, "Recording start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->b:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Recording:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioRecorderCore;->stopRecording()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->stopWriter()V

    sget-object v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;->Stoped:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->notifyRecordingState(Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$RecordState;)V

    const-string v0, "Recording stoped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v0, 0x903004

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected stopWriter()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->PCM:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->b()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->a:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    sget-object v1, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;->AAC:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$OutputFormat;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->d()V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->f:Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder$TuSDKRecordAudioDelegate;->onAudioRecordComplete(Ljava/io/File;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioFileRecorder;->c:Ljava/io/File;

    return-void
.end method
