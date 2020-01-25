.class public Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
.super Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# instance fields
.field public audioFormat:I

.field public bitrate:I

.field public channel:I

.field public channelConfig:I

.field public duration:J

.field public sampleRate:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    sget-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getBitrate()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bitrate:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    const/16 v1, 0xc

    iput v1, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channelConfig:I

    iput v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->audioFormat:I

    return-void
.end method

.method private a()I
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->audioFormat:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/16 v0, 0x8

    return v0

    :cond_1
    return v1
.end method

.method public static createWithMediaFormat(Landroid/media/MediaFormat;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;-><init>()V

    const-string v1, "channel-count"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    :cond_1
    iget v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    :goto_0
    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channelConfig:I

    const-string v1, "sample-rate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sample-rate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    :cond_3
    const-string v1, "bitrate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "bitrate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM2:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getBitrate()I

    move-result v1

    goto :goto_1

    :cond_4
    const-string v1, "bitrate"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bitrate:I

    :cond_5
    const-string v1, "durationUs"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "durationUs"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->duration:J

    :cond_6
    const-string v1, "bit-width"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "bit-width"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_7

    const/4 p0, 0x3

    goto :goto_2

    :cond_7
    const/4 p0, 0x2

    :goto_2
    iput p0, v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->audioFormat:I

    :cond_8
    return-object v0
.end method

.method public static defaultAudioInfo()Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bytesCountOfTime(I)I
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->a()I

    move-result v0

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    mul-int/2addr p1, v0

    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public frameTimeUsWithAudioSize(I)J
    .locals 4

    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    div-int/2addr p1, v0

    const v0, 0xf4240

    mul-int/2addr p1, v0

    int-to-long v0, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->getAudioBytesPerSample()J

    move-result-wide v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAudioBytesPerSample()J
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    if-gtz v0, :cond_0

    const v0, 0xac44

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->a()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFrameInterval()J
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    if-gtz v0, :cond_0

    const v0, 0xac44

    :cond_0
    const/high16 v1, 0x3d090000

    div-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n sampleRate |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n channel |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n bitrate |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n audioFormat |"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
