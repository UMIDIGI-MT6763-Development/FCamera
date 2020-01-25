.class public Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;
.super Ljava/lang/Object;


# instance fields
.field public audioBufferQueueNum:I

.field public audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

.field public audioRecoderBufferSize:I

.field public audioRecoderChannelConfig:I

.field public audioRecoderFormat:I

.field public audioRecoderSampleRate:I

.field public audioRecoderSliceSize:I

.field public audioRecoderSource:I

.field public shouldEnableAec:Z

.field public shouldEnableNs:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->shouldEnableAec:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->shouldEnableNs:Z

    sget-object v0, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->MEDIUM1:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    iput-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    const/16 v0, 0xa

    iput v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioBufferQueueNum:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderFormat:I

    const/16 v2, 0xc

    iput v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderChannelConfig:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v2

    div-int/2addr v2, v0

    iput v2, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSliceSize:I

    iget v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSliceSize:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderBufferSize:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioQuality:Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/audio/TuSDKAudioEncoderSetting$AudioQuality;->getSampleRate()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSampleRate:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;->audioRecoderSource:I

    return-void
.end method

.method public static defaultCaptureSetting()Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/audio/TuSDKAudioCaptureSetting;-><init>()V

    return-object v0
.end method
