.class public Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;
    }
.end annotation


# instance fields
.field public audioBufferQueueNum:I

.field public audioFormat:I

.field public audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public bufferSize:I

.field public channelConfig:I

.field public enableBuffers:Z

.field public mediacodecAACChannelCount:I

.field public mediacodecAACMaxInputSize:I

.field public mediacodecAACProfile:I

.field public sampleRate:I

.field public sliceSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->mediacodecAACProfile:I

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->mediacodecAACChannelCount:I

    const/16 v1, 0x2274

    iput v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->mediacodecAACMaxInputSize:I

    sget-object v1, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    iput-object v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const/16 v1, 0xa

    iput v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioBufferQueueNum:I

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioFormat:I

    const/16 v2, 0xc

    iput v2, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->channelConfig:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v2

    div-int/2addr v2, v1

    iput v2, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->sliceSize:I

    iget v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->sliceSize:I

    mul-int/2addr v1, v0

    iput v1, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->bufferSize:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->sampleRate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;->enableBuffers:Z

    return-void
.end method

.method public static defaultEncoderSetting()Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting;-><init>()V

    return-object v0
.end method
