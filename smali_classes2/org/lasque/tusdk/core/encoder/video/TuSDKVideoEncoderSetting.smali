.class public Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;
    }
.end annotation


# instance fields
.field public mediacodecAVCColorFormat:I

.field public mediacodecAVCIFrameInterval:I

.field public previewColorFormat:I

.field public videoBufferQueueNum:I

.field public videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

.field public videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/16 v1, 0x140

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    sget-object v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->LIVE_MEDIUM2:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    iput-object v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    const/4 v0, 0x1

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCIFrameInterval:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoBufferQueueNum:I

    const/16 v0, 0x11

    iput v0, p0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->previewColorFormat:I

    return-void
.end method

.method public static getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getGpuType()Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU$GpuType;->getPerformance()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    sget-object v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->RECORD_LOW2:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    :goto_0
    iput-object v1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    sget-object v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->RECORD_MEDIUM1:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    sget-object v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->RECORD_MEDIUM3:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->RECORD_HIGH1:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    goto :goto_0

    :goto_1
    iput v2, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->mediacodecAVCIFrameInterval:I

    return-object v0
.end method
